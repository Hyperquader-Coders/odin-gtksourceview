# Patched bindings

The bindings are generated from the C headers by runic 0.8 in Amber's fork (`../runic`, branch `amber-patched`).
Regenerating overwrites hand fixes, so each is also pinned by a typed variable in the
package's `patched.odin`: a regeneration that drops a patch fails to compile there instead
of misbehaving at run time.

To regenerate, run `make generate`, re-apply every row below, and build the package.

## Generation rules

`scripts/postprocess.sh gtksourceview` applies these to `gtksourceview/gtksourceview.odin`. They
are odin-gtk's rules, trimmed to what runic 0.8 produces from these headers.

| rule | reason |
|---|---|
| `^glib.char` and `[^]glib.char` become `cstring` | `gchar *` is a typedef'd char pointer, which runic leaves as a pointer to `char` |
| `SOURCE_MAJOR_VERSION`, `SOURCE_MINOR_VERSION`, `SOURCE_MICRO_VERSION` and `SOURCE_VERSION_*` lose their backticks | the version test reads them as numbers |
| `SOURCE_TYPE_FOO` and `SOURCE_*_ERROR` of the form `` `(gtk_foo_get_type ())` `` name `source_foo_get_type` and `source_foo_error_quark` | macro text runic quotes as a string |
| `SOURCE_NEWLINE_TYPE_DEFAULT` becomes `SourceNewlineType.SOURCE_NEWLINE_TYPE_LF` | the header aliases the Unix value |
| `SOURCE_ENUM_EXTERN` is deleted | it is the C `extern` keyword |
| `SourceFoo :: _GtkSourceFoo` is deleted and `_GtkSourceFoo` becomes `SourceFoo` | one name per struct; runic leaves the alias unresolved |
| the GFlags enums listed in `postprocess.sh` (`gtksourceview_flags`) become `SourceFooBit :: enum u32` of bit indices plus `SourceFoo :: bit_set[SourceFooBit; u32]`; zero members and composite masks become constants of `SourceFoo` | `{.SOURCE_SPACE_TYPE_TAB, .SOURCE_SPACE_TYPE_SPACE}` instead of integer ORs; the size and bits are those of C; see DECISIONS §4 |
| `parameters: declared` in `gtksourceview/rune.yml`: every procedure parameter is `^T` unless `arrays:` lists it, so `settings`, `lines`, `attributes`, `words`, `results`, `attrs` and `candidate_encodings` (`SourceSearchSettings`, `SourceGutterLines`, `SourceMarkAttributes`, `SourceCompletionWords`, `gio.Settings`, `gio.ListModel`, `pango.AttrList`, `glib.SList`) are `^T` | runic writes `[^]T` for any pointer parameter whose name ends in "s"; the headers pass one `T *`. The two `dirs` parameters (`const gchar * const *`) are arrays, listed under `arrays:`, and stay `[^]cstring` |

## `gtksourceview`

`rune.yml` ignores every GDK, GSK and GTK constant that GtkSourceView's headers pull in
(`GDK_*`, `GSK_*`, `GTK_TYPE_*`, `GTK_PRINT_*`, `GTK_PAPER_*`, `GTK_TREE_*`, `GTK_CSS_*`,
`GTK_FILE_*`) and the `_*`, `*DEPRECATED*` and `*AVAILABLE*` macros. GTK, GLib, cairo, pango,
gdk-pixbuf and graphene types come from their packages, not from this one.

No procedure is patched by hand.

Pins, in `gtksourceview/patched.odin`: `patched_language_get_name`, `patched_language_get_id`
and `patched_language_manager_get_language` (the `cstring` rule), `patched_type_buffer` (the
`TYPE_*` rule), `patched_version` and `patched_check_version` (the version macros) and
`patched_newline_default`, and for the single-object parameters `patched_search_context_new`, `patched_gutter_lines_add_qclass` and one pin each for the other parameters it fixed.

## Check

`scripts/check-generated.sh` (in `make lint`) lists every parameter that `parameters: declared` makes a single object, as `proc, parameter` lines, and fails if one is typed `[^]` again or a `va_list` procedure appears. The two `dirs` parameters (`source_language_manager_set_search_path`, `source_snippet_manager_set_search_path`) are `const gchar * const *` arrays and stay `[^]cstring`.

## Out-parameters (`T **`)

runic writes `[^]^T` for some `T **` parameters; an out-parameter that returns one pointer must be `^^T`. Every `[^]^T` and `^[^]^T` in the generated output was read against the headers: none is a single-pointer out-parameter, so none is rewritten (under `declared` a `T **` is `^^T` anyway). `scripts/check-generated.sh` fails on any `[^]^T` that is not in its `pointer_vectors` list, so a new one is noticed on the next `make generate`.
