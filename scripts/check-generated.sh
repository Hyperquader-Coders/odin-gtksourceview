#!/usr/bin/env bash
# Fails when one of runic 0.8's three known faults is back in the generated files. The fork
# (`parameters: declared`, skipped va_list procedures) prevents them; this proves it:
#   1. a #c_vararg procedure that stands for a C function taking a va_list (runic drops the
#      va_list and marks the procedure `#c_vararg ..any`, which is a wrong call);
#   2. a corrected parameter typed as runic wrote it (`[^]T` for a pointer to one object);
#   3. a `[^]^T` parameter (`T **` out-parameter for one pointer) that is not a listed vector.
# `scripts/check-generated.sh --list` prints the corrected parameters. Run by `make check-generated` (in `make lint`).
set -euo pipefail
cd "$(dirname "$0")/.."

# Procedures removed from the output because their C declaration takes a va_list.
removed_valist=""

# What a generic va_list procedure looks like, by its name or link_name.
valist_pattern='_valist|_va_list|vprintf|vsnprintf|vsprintf|vasprintf|_vfprintf|_logv|_vscanf'

# Corrected parameters, one per line: package, procedure (Struct.field for a struct field),
# parameter (-> for the return type), and what the type must start with:
#   ^      pointer to one object; runic wrote [^]T
#   ^^     out-parameter for one pointer (T **); runic wrote [^]^T
#   ^[^]   out-parameter for a run (T **, an array comes back); runic wrote [^]^T
#   [^]    a run (a byte buffer, a log-attr array) that runic wrote as ^T
# Every other [^] parameter whose name ends in "s" was read against the C header and is a run.
corrected() {
    cat <<'LIST'
gtksourceview source_completion_cell_set_text_with_attributes attrs ^
gtksourceview source_completion_context_set_proposals_for_provider results ^
gtksourceview source_file_loader_set_candidate_encodings candidate_encodings ^
gtksourceview source_gutter_lines_get_first lines ^
gtksourceview source_gutter_lines_get_last lines ^
gtksourceview source_gutter_lines_get_iter_at_line lines ^
gtksourceview source_gutter_lines_get_view lines ^
gtksourceview source_gutter_lines_get_buffer lines ^
gtksourceview source_gutter_lines_add_qclass lines ^
gtksourceview source_gutter_lines_add_class lines ^
gtksourceview source_gutter_lines_remove_class lines ^
gtksourceview source_gutter_lines_remove_qclass lines ^
gtksourceview source_gutter_lines_has_class lines ^
gtksourceview source_gutter_lines_has_qclass lines ^
gtksourceview source_gutter_lines_is_cursor lines ^
gtksourceview source_gutter_lines_is_prelit lines ^
gtksourceview source_gutter_lines_is_selected lines ^
gtksourceview source_gutter_lines_get_line_yrange lines ^
gtksourceview source_gutter_lines_has_any_class lines ^
gtksourceview source_view_set_mark_attributes attributes ^
gtksourceview source_mark_attributes_set_background attributes ^
gtksourceview source_mark_attributes_get_background attributes ^
gtksourceview source_mark_attributes_set_icon_name attributes ^
gtksourceview source_mark_attributes_get_icon_name attributes ^
gtksourceview source_mark_attributes_set_gicon attributes ^
gtksourceview source_mark_attributes_get_gicon attributes ^
gtksourceview source_mark_attributes_set_pixbuf attributes ^
gtksourceview source_mark_attributes_get_pixbuf attributes ^
gtksourceview source_mark_attributes_render_icon attributes ^
gtksourceview source_mark_attributes_get_tooltip_text attributes ^
gtksourceview source_mark_attributes_get_tooltip_markup attributes ^
gtksourceview source_search_context_new settings ^
gtksourceview source_search_settings_set_search_text settings ^
gtksourceview source_search_settings_get_search_text settings ^
gtksourceview source_search_settings_set_case_sensitive settings ^
gtksourceview source_search_settings_get_case_sensitive settings ^
gtksourceview source_search_settings_set_at_word_boundaries settings ^
gtksourceview source_search_settings_get_at_word_boundaries settings ^
gtksourceview source_search_settings_set_wrap_around settings ^
gtksourceview source_search_settings_get_wrap_around settings ^
gtksourceview source_search_settings_set_regex_enabled settings ^
gtksourceview source_search_settings_get_regex_enabled settings ^
gtksourceview source_search_settings_get_visible_only settings ^
gtksourceview source_search_settings_set_visible_only settings ^
gtksourceview source_space_drawer_bind_matrix_setting settings ^
gtksourceview source_completion_words_register words ^
gtksourceview source_completion_words_unregister words ^
LIST
}

if [ "${1:-}" = --list ]; then
    corrected
    exit 0
fi

fail=0

# 1. va_list procedures.
files=$(git ls-files '*.odin' | grep -Ev '(_test|/patched)\.odin$' || true)
[ -n "$files" ] || { echo "check-generated: no .odin files found" >&2; exit 2; }
# shellcheck disable=SC2086
hits=$(VALIST="$valist_pattern" REMOVED="$removed_valist" perl -ne '
    BEGIN { $re = $ENV{VALIST}; %gone = map { $_ => 1 } split " ", $ENV{REMOVED}; }
    $name = $1 if /^\s*(\w+) :: /;
    $link = $1 if /link_name = "(\w+)"/;
    if (/^\s*(\w+) :: / && $gone{$1}) { print "$ARGV:$.: $1 is a removed va_list procedure\n" }
    if (/#c_vararg/ && ($name =~ /$re/ || ($link // "") =~ /$re/)) {
        print "$ARGV:$.: $name takes a va_list and is bound as #c_vararg ..any\n" }
    $link = "" if /^\s*\w+ :: /;
    close ARGV if eof;
' $files)
if [ -n "$hits" ]; then
    echo "$hits"
    echo "check-generated: a va_list procedure must be skipped by runic; check ../runic is the amber-patched build"
    fail=1
fi

# 2. Corrected parameters.
while read -r pkg proc param want; do
    [ -n "$pkg" ] || continue
    file="$pkg/$pkg.odin"
    if ! msg=$(PROC="$proc" PARAM="$param" WANT="$want" perl -e '
        my ($proc, $param, $want) = @ENV{qw(PROC PARAM WANT)};
        my ($struct, $field) = split /\./, $proc;
        my $in = 0; my $seen = 0;
        while (<>) {
            if (defined $field) {
                $in = 1 if /^\Q$struct\E :: (?:#type )?struct/;
                if ($in && /^\}/) { $in = 0 }
                next unless $in && /^\s+\Q$field\E: (.*?),?\s*$/;
                $type = $1;
            } else {
                next unless /^\s*(?:\@\(.*?\)\s*)?\Q$proc\E :: /;
                if ($param eq "->") { next unless /-> (\S+)\s*(?:---)?\s*$/; $type = $1 }
                else { next unless /[(, ]\Q$param\E: ([^,)]+)/; $type = $1 }
            }
            $seen = 1;
            if (substr($type, 0, length $want) ne $want or ($want eq "^" and $type =~ /^\^[\[\^]/)) {
                print "$proc $param is typed $type, want $want\n"; exit 1 }
            last;
        }
        unless ($seen) { print "$proc $param not found\n"; exit 1 }
    ' "$file"); then
        echo "$file: $msg"
        fail=1
    fi
done < <(corrected | grep .)

# 3. A `[^]^T` parameter is runic's spelling of `T **`. It is right only for a counted vector of
# pointers; an out-parameter that returns one pointer is `^^T` (runic 0.8's third fault). Every
# such parameter was read against the C header; the vectors are listed here, one per line:
# procedure, parameter. A `^[^]^T` (the out-array itself) is not matched.
pointer_vectors() {
    cat <<'LIST'
LIST
}
# shellcheck disable=SC2086
vec_hits=$(VECTORS="$(pointer_vectors | grep . || true)" perl -ne '
    BEGIN { for (split /\n/, $ENV{VECTORS}) { $ok{$_} = 1 } }
    $proc = $1 if /^\s*(\w+) :: /;
    while (/(?<![\^\w])(\w+): \[\^\]\^/g) {
        print "$ARGV:$.: $proc $1 is [^]^T; use ^^T for an out-parameter, or list it in pointer_vectors if it is a counted vector\n"
            unless $ok{"$proc $1"};
    }
    close ARGV if eof;
' $files)
if [ -n "$vec_hits" ]; then
    echo "$vec_hits"
    fail=1
fi

if [ "$fail" -ne 0 ]; then
    echo "check-generated: runic's output regressed; check rune.yml (parameters: declared) and run make generate"
    exit 1
fi
echo "check-generated: OK"
