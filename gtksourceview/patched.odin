package gtksourceview

import glib "glib:glib"
import gio "glib:gio"
import gobj "glib:gobject"
import gtk "gtk4:gtk4"
import pango "pango:pango"

// Typed pins for the post-generation rules (docs/PATCHED.md). A regeneration that drops one
// fails to compile here.

// gchar * is cstring, not ^char.
@(private = "file")
patched_language_get_name: proc "c" (_: ^SourceLanguage) -> cstring = source_language_get_name

@(private = "file")
patched_language_get_id: proc "c" (_: ^SourceLanguage) -> cstring = source_language_get_id

@(private = "file")
patched_language_manager_get_language: proc "c" (_: ^SourceLanguageManager, _: cstring) -> ^SourceLanguage = source_language_manager_get_language

// TYPE_FOO names foo_get_type, with no backticks or parentheses.
@(private = "file")
patched_type_buffer: proc "c" () -> gobj.Type = SOURCE_TYPE_BUFFER

// Odin expressions for macros runic quotes as strings.
@(private = "file")
patched_version: [3]int = {SOURCE_MAJOR_VERSION, SOURCE_MINOR_VERSION, SOURCE_MICRO_VERSION}

@(private = "file")
patched_newline_default: SourceNewlineType = SOURCE_NEWLINE_TYPE_DEFAULT

@(private = "file")
patched_check_version: proc "c" (_: glib.uint_, _: glib.uint_, _: glib.uint_) -> glib.boolean = source_check_version

// One GObject per parameter: `T *` is ^T, not the [^]T runic writes for a plural name.
@(private = "file")
patched_search_context_new: proc "c" (_: ^SourceBuffer, _: ^SourceSearchSettings) -> ^SourceSearchContext = source_search_context_new

@(private = "file")
patched_gutter_lines_add_qclass: proc "c" (_: ^SourceGutterLines, _: glib.uint_, _: glib.Quark) = source_gutter_lines_add_qclass

@(private = "file")
patched_search_settings_set_search_text: proc "c" (_: ^SourceSearchSettings, _: cstring) = source_search_settings_set_search_text

@(private = "file")
patched_mark_attributes_set_icon_name: proc "c" (_: ^SourceMarkAttributes, _: cstring) = source_mark_attributes_set_icon_name

@(private = "file")
patched_completion_words_register: proc "c" (_: ^SourceCompletionWords, _: ^gtk.TextBuffer) = source_completion_words_register

@(private = "file")
patched_completion_context_set_proposals_for_provider: proc "c" (_: ^SourceCompletionContext, _: ^SourceCompletionProvider, _: ^gio.ListModel) = source_completion_context_set_proposals_for_provider

@(private = "file")
patched_completion_cell_set_text_with_attributes: proc "c" (_: ^SourceCompletionCell, _: cstring, _: ^pango.AttrList) = source_completion_cell_set_text_with_attributes

@(private = "file")
patched_file_loader_set_candidate_encodings: proc "c" (_: ^SourceFileLoader, _: ^glib.SList) = source_file_loader_set_candidate_encodings

@(private = "file")
patched_space_drawer_bind_matrix_setting: proc "c" (_: ^SourceSpaceDrawer, _: ^gio.Settings, _: cstring, _: gio.SettingsBindFlags) = source_space_drawer_bind_matrix_setting

@(private = "file")
patched_buffer_iter_has_context_class: proc "c" (_: ^SourceBuffer, _: ^gtk.TextIter, _: cstring) -> glib.boolean = source_buffer_iter_has_context_class
