#+test
package gtksourceview

import "core:strings"
import "core:testing"

import gobj "glib:gobject"

// Version recorded in README.md: "**Bound version:** X.Y.Z".
README :: #load("../README.md", string)

bound_version :: proc() -> (nums: [3]int, ok: bool) {
    marker :: "**Bound version:** "
    readme := README
    i := strings.index(readme, marker)
    if i < 0 do return
    rest := readme[i + len(marker):]
    end := strings.index_any(rest, " \n")
    if end < 0 do return
    parts := strings.split(rest[:end], ".", context.temp_allocator)
    if len(parts) != 3 do return
    for p, n in parts {
        v := 0
        if len(p) == 0 do return
        for c in p {
            if c < '0' || c > '9' do return
            v = v * 10 + int(c - '0')
        }
        nums[n] = v
    }
    return nums, true
}

@(test)
test_readme_version_matches_header_macros :: proc(t: ^testing.T) {
    nums, ok := bound_version()
    testing.expect(t, ok, "README.md has no '**Bound version:** X.Y.Z'")
    testing.expect_value(t, nums[0], SOURCE_MAJOR_VERSION)
    testing.expect_value(t, nums[1], SOURCE_MINOR_VERSION)
    testing.expect_value(t, nums[2], SOURCE_MICRO_VERSION)
}

@(test)
test_loaded_library_version :: proc(t: ^testing.T) {
    nums, _ := bound_version()
    testing.expect_value(t, int(source_get_major_version()), nums[0])
    testing.expect_value(t, int(source_get_minor_version()), nums[1])
    testing.expect_value(t, int(source_get_micro_version()), nums[2])
    testing.expect(t, bool(source_check_version(5, 0, 0)), "library older than 5.0.0")
    testing.expect(t, !bool(source_check_version(99, 0, 0)), "check_version accepts 99.0.0")
}

@(test)
test_type_names :: proc(t: ^testing.T) {
    testing.expect_value(t, string(gobj.type_name(SOURCE_TYPE_BUFFER())), "GtkSourceBuffer")
    testing.expect_value(t, string(gobj.type_name(SOURCE_TYPE_VIEW())), "GtkSourceView")
}

@(test)
test_language_manager :: proc(t: ^testing.T) {
    source_init()
    lm := source_language_manager_new()
    defer gobj.object_unref(lm)
    testing.expect(t, lm != nil)
    ids := source_language_manager_get_language_ids(lm)
    testing.expect(t, ids != nil, "no languages found")
    lang := source_language_manager_get_language(lm, "c")
    testing.expect(t, lang != nil, "language 'c' not found")
    if lang != nil {
        testing.expect_value(t, string(source_language_get_id(lang)), "c")
        testing.expect_value(t, string(source_language_get_name(lang)), "C")
    }
}

// Single-object parameters are ^T (docs/PATCHED.md); `parameters: declared` in rune.yml, where runic wrote [^]T for names ending in "s".
// GtkSourceGutterLines exists only inside a gutter snapshot, so add_qclass is pinned by type in
// patched.odin and not called. One test makes buffers: GtkSourceBuffer's style scheme setup
// is not safe on parallel test threads.
@(test)
test_buffer_search_context_takes_one_settings_object :: proc(t: ^testing.T) {
    buf := source_buffer_new(nil)
    defer gobj.object_unref(buf)
    testing.expect(t, buf != nil)
    testing.expect(t, source_buffer_get_language(buf) == nil)
    settings := source_search_settings_new()
    defer gobj.object_unref(settings)
    source_search_settings_set_search_text(settings, "needle")
    source_search_settings_set_case_sensitive(settings, true)
    ctx := source_search_context_new(buf, settings)
    defer gobj.object_unref(ctx)
    testing.expect(t, ctx != nil)
    testing.expect(t, source_search_context_get_settings(ctx) == settings, "context holds another settings object")
    testing.expect_value(t, string(source_search_settings_get_search_text(settings)), "needle")
    testing.expect(t, bool(source_search_settings_get_case_sensitive(settings)))
}

// Flag enums are bit_sets of the C bits (docs/DECISIONS.md §4): the size is that of the C enum
// (4 bytes) and a member's index is the position of its bit in the header (gtksourcebuffer.h, gtksourcefilesaver.h, gtksourcespacedrawer.h).

bits :: proc(s: $S) -> u32 {
    return transmute(u32)s
}

@(test)
test_flag_sets_are_the_size_of_the_c_enum :: proc(t: ^testing.T) {
    testing.expect_value(t, size_of(SourceSortFlags), 4)
    testing.expect_value(t, size_of(SourceFileSaverFlags), 4)
    testing.expect_value(t, size_of(SourceSpaceTypeFlags), 4)
    testing.expect_value(t, size_of(SourceSpaceLocationFlags), 4)
}

@(test)
test_flag_bits_match_the_header :: proc(t: ^testing.T) {
    testing.expect_value(t, bits(SourceSortFlags{.SOURCE_SORT_FLAGS_CASE_SENSITIVE}), 1)
    testing.expect_value(t, bits(SourceSortFlags{.SOURCE_SORT_FLAGS_REVERSE_ORDER}), 2)
    testing.expect_value(t, bits(SourceSortFlags{.SOURCE_SORT_FLAGS_REMOVE_DUPLICATES}), 4)
    testing.expect_value(t, bits(SourceFileSaverFlags{.SOURCE_FILE_SAVER_FLAGS_IGNORE_INVALID_CHARS}), 1)
    testing.expect_value(t, bits(SourceFileSaverFlags{.SOURCE_FILE_SAVER_FLAGS_IGNORE_MODIFICATION_TIME}), 2)
    testing.expect_value(t, bits(SourceFileSaverFlags{.SOURCE_FILE_SAVER_FLAGS_CREATE_BACKUP}), 4)
    testing.expect_value(t, bits(SourceSpaceTypeFlags{.SOURCE_SPACE_TYPE_SPACE}), 1)
    testing.expect_value(t, bits(SourceSpaceTypeFlags{.SOURCE_SPACE_TYPE_TAB}), 2)
    testing.expect_value(t, bits(SourceSpaceTypeFlags{.SOURCE_SPACE_TYPE_NEWLINE}), 4)
    testing.expect_value(t, bits(SourceSpaceTypeFlags{.SOURCE_SPACE_TYPE_NBSP}), 8)
    testing.expect_value(t, bits(SourceSpaceLocationFlags{.SOURCE_SPACE_LOCATION_LEADING}), 1)
    testing.expect_value(t, bits(SourceSpaceLocationFlags{.SOURCE_SPACE_LOCATION_INSIDE_TEXT}), 2)
    testing.expect_value(t, bits(SourceSpaceLocationFlags{.SOURCE_SPACE_LOCATION_TRAILING}), 4)
}

@(test)
test_zero_members_are_the_empty_set :: proc(t: ^testing.T) {
    testing.expect_value(t, SOURCE_SORT_FLAGS_NONE, SourceSortFlags{})
    testing.expect_value(t, SOURCE_FILE_SAVER_FLAGS_NONE, SourceFileSaverFlags{})
    testing.expect_value(t, SOURCE_SPACE_TYPE_NONE, SourceSpaceTypeFlags{})
    testing.expect_value(t, SOURCE_SPACE_LOCATION_NONE, SourceSpaceLocationFlags{})
}

@(test)
test_composite_masks_are_sets :: proc(t: ^testing.T) {
    testing.expect_value(t, bits(SOURCE_SPACE_TYPE_ALL), 0xf)
    testing.expect_value(t, bits(SOURCE_SPACE_LOCATION_ALL), 0x7)
}
