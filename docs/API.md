# odin-gtksourceview API

Every public declaration of every package, generated from the source by `make api`; do not
edit. The reference is the [README](../README.md); the short form is the
[cheat sheet](CHEATSHEET.md).

## gtksourceview:gtksourceview

```text
package gtksourceview
	constants
		SOURCE_FILE_SAVER_FLAGS_NONE :: SourceFileSaverFlags{}
		SOURCE_MAJOR_VERSION :: 5
		SOURCE_MICRO_VERSION :: 0
		SOURCE_MINOR_VERSION :: 12
		SOURCE_NEWLINE_TYPE_DEFAULT :: SourceNewlineType.SOURCE_NEWLINE_TYPE_LF
		SOURCE_SORT_FLAGS_NONE :: SourceSortFlags{}
		SOURCE_SPACE_LOCATION_ALL :: SourceSpaceLocationFlags{.SOURCE_SPACE_LOCATION_LEADING, .SOURCE_SPACE_LOCATION_INSIDE_TEXT, .SOURCE_SPACE_LOCATION_TRAILING}
		SOURCE_SPACE_LOCATION_NONE :: SourceSpaceLocationFlags{}
		SOURCE_SPACE_TYPE_ALL :: SourceSpaceTypeFlags{.SOURCE_SPACE_TYPE_SPACE, .SOURCE_SPACE_TYPE_TAB, .SOURCE_SPACE_TYPE_NEWLINE, .SOURCE_SPACE_TYPE_NBSP}
		SOURCE_SPACE_TYPE_NONE :: SourceSpaceTypeFlags{}
		SOURCE_VERSION_5_0 :: (5) << 16 | (0) << 8
		SOURCE_VERSION_5_10 :: (5) << 16 | (10) << 8
		SOURCE_VERSION_5_12 :: (5) << 16 | (12) << 8
		SOURCE_VERSION_5_2 :: (5) << 16 | (2) << 8
		SOURCE_VERSION_5_4 :: (5) << 16 | (4) << 8
		SOURCE_VERSION_5_6 :: (5) << 16 | (6) << 8
		SOURCE_VERSION_5_8 :: (5) << 16 | (8) << 8
		SOURCE_VERSION_CUR_STABLE :: ((5)) << 16 | ((12)) << 8
		SOURCE_VERSION_MAX_ALLOWED :: ((5)) << 16 | ((12)) << 8
		SOURCE_VERSION_MIN_REQUIRED :: ((5)) << 16 | ((12)) << 8
		SOURCE_VERSION_PREV_STABLE :: ((5)) << 16 | ((12) - 2) << 8

	procedures
		source_background_pattern_type_get_type :: proc() -> gobj.Type ---
		source_background_pattern_type_get_type :: proc() -> gobj.Type ---
		source_bracket_match_type_get_type :: proc() -> gobj.Type ---
		source_bracket_match_type_get_type :: proc() -> gobj.Type ---
		source_buffer_backward_iter_to_source_mark :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, category: cstring) -> glib.boolean ---
		source_buffer_change_case :: proc(buffer: ^SourceBuffer, case_type: SourceChangeCaseType, start: ^gtk.TextIter, end: ^gtk.TextIter) ---
		source_buffer_create_source_mark :: proc(buffer: ^SourceBuffer, name: cstring, category: cstring, where_p: ^gtk.TextIter) -> ^SourceMark ---
		source_buffer_create_source_tag :: proc(buffer: ^SourceBuffer, tag_name: cstring, first_property_name: cstring, #c_vararg var_args: ..any) -> ^gtk.TextTag ---
		source_buffer_ensure_highlight :: proc(buffer: ^SourceBuffer, start: ^gtk.TextIter, end: ^gtk.TextIter) ---
		source_buffer_forward_iter_to_source_mark :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, category: cstring) -> glib.boolean ---
		source_buffer_get_context_classes_at_iter :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter) -> ^cstring ---
		source_buffer_get_highlight_matching_brackets :: proc(buffer: ^SourceBuffer) -> glib.boolean ---
		source_buffer_get_highlight_syntax :: proc(buffer: ^SourceBuffer) -> glib.boolean ---
		source_buffer_get_implicit_trailing_newline :: proc(buffer: ^SourceBuffer) -> glib.boolean ---
		source_buffer_get_language :: proc(buffer: ^SourceBuffer) -> ^SourceLanguage ---
		source_buffer_get_loading :: proc(buffer: ^SourceBuffer) -> glib.boolean ---
		source_buffer_get_source_marks_at_iter :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, category: cstring) -> ^glib.SList ---
		source_buffer_get_source_marks_at_line :: proc(buffer: ^SourceBuffer, line: glib.int_, category: cstring) -> ^glib.SList ---
		source_buffer_get_style_scheme :: proc(buffer: ^SourceBuffer) -> ^SourceStyleScheme ---
		source_buffer_get_type :: proc() -> gobj.Type ---
		source_buffer_get_type :: proc() -> gobj.Type ---
		source_buffer_iter_backward_to_context_class_toggle :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, context_class: cstring) -> glib.boolean ---
		source_buffer_iter_forward_to_context_class_toggle :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, context_class: cstring) -> glib.boolean ---
		source_buffer_iter_has_context_class :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, context_class: cstring) -> glib.boolean ---
		source_buffer_join_lines :: proc(buffer: ^SourceBuffer, start: ^gtk.TextIter, end: ^gtk.TextIter) ---
		source_buffer_new :: proc(table: ^gtk.TextTagTable) -> ^SourceBuffer ---
		source_buffer_new_with_language :: proc(language: ^SourceLanguage) -> ^SourceBuffer ---
		source_buffer_remove_source_marks :: proc(buffer: ^SourceBuffer, start: ^gtk.TextIter, end: ^gtk.TextIter, category: cstring) ---
		source_buffer_set_highlight_matching_brackets :: proc(buffer: ^SourceBuffer, highlight: glib.boolean) ---
		source_buffer_set_highlight_syntax :: proc(buffer: ^SourceBuffer, highlight: glib.boolean) ---
		source_buffer_set_implicit_trailing_newline :: proc(buffer: ^SourceBuffer, implicit_trailing_newline: glib.boolean) ---
		source_buffer_set_language :: proc(buffer: ^SourceBuffer, language: ^SourceLanguage) ---
		source_buffer_set_style_scheme :: proc(buffer: ^SourceBuffer, scheme: ^SourceStyleScheme) ---
		source_buffer_sort_lines :: proc(buffer: ^SourceBuffer, start: ^gtk.TextIter, end: ^gtk.TextIter, flags: SourceSortFlags, column: glib.int_) ---
		source_change_case_type_get_type :: proc() -> gobj.Type ---
		source_change_case_type_get_type :: proc() -> gobj.Type ---
		source_check_version :: proc(major: glib.uint_, minor: glib.uint_, micro: glib.uint_) -> glib.boolean ---
		source_completion_activation_get_type :: proc() -> gobj.Type ---
		source_completion_activation_get_type :: proc() -> gobj.Type ---
		source_completion_add_provider :: proc(self: ^SourceCompletion, provider: ^SourceCompletionProvider) ---
		source_completion_block_interactive :: proc(self: ^SourceCompletion) ---
		source_completion_cell_get_column :: proc(self: ^SourceCompletionCell) -> SourceCompletionColumn ---
		source_completion_cell_get_type :: proc() -> gobj.Type ---
		source_completion_cell_get_type :: proc() -> gobj.Type ---
		source_completion_cell_get_widget :: proc(self: ^SourceCompletionCell) -> ^gtk.Widget ---
		source_completion_cell_set_gicon :: proc(self: ^SourceCompletionCell, gicon: ^gio.Icon) ---
		source_completion_cell_set_icon_name :: proc(self: ^SourceCompletionCell, icon_name: cstring) ---
		source_completion_cell_set_markup :: proc(self: ^SourceCompletionCell, markup: cstring) ---
		source_completion_cell_set_paintable :: proc(self: ^SourceCompletionCell, paintable: ^gtk.Paintable) ---
		source_completion_cell_set_text :: proc(self: ^SourceCompletionCell, text: cstring) ---
		source_completion_cell_set_text_with_attributes :: proc(self: ^SourceCompletionCell, text: cstring, attrs: ^pango.AttrList) ---
		source_completion_cell_set_widget :: proc(self: ^SourceCompletionCell, child: ^gtk.Widget) ---
		source_completion_column_get_type :: proc() -> gobj.Type ---
		source_completion_column_get_type :: proc() -> gobj.Type ---
		source_completion_context_get_activation :: proc(self: ^SourceCompletionContext) -> SourceCompletionActivation ---
		source_completion_context_get_bounds :: proc(self: ^SourceCompletionContext, begin: ^gtk.TextIter, end: ^gtk.TextIter) -> glib.boolean ---
		source_completion_context_get_buffer :: proc(self: ^SourceCompletionContext) -> ^SourceBuffer ---
		source_completion_context_get_busy :: proc(self: ^SourceCompletionContext) -> glib.boolean ---
		source_completion_context_get_completion :: proc(self: ^SourceCompletionContext) -> ^SourceCompletion ---
		source_completion_context_get_empty :: proc(self: ^SourceCompletionContext) -> glib.boolean ---
		source_completion_context_get_language :: proc(self: ^SourceCompletionContext) -> ^SourceLanguage ---
		source_completion_context_get_proposals_for_provider :: proc(self: ^SourceCompletionContext, provider: ^SourceCompletionProvider) -> ^gio.ListModel ---
		source_completion_context_get_type :: proc() -> gobj.Type ---
		source_completion_context_get_type :: proc() -> gobj.Type ---
		source_completion_context_get_view :: proc(self: ^SourceCompletionContext) -> ^SourceView ---
		source_completion_context_get_word :: proc(self: ^SourceCompletionContext) -> cstring ---
		source_completion_context_list_providers :: proc(self: ^SourceCompletionContext) -> ^gio.ListModel ---
		source_completion_context_set_proposals_for_provider :: proc(self: ^SourceCompletionContext, provider: ^SourceCompletionProvider, results: ^gio.ListModel) ---
		source_completion_fuzzy_highlight :: proc(haystack: cstring, casefold_query: cstring) -> ^pango.AttrList ---
		source_completion_fuzzy_match :: proc(haystack: cstring, casefold_needle: cstring, priority: ^glib.uint_) -> glib.boolean ---
		source_completion_get_buffer :: proc(self: ^SourceCompletion) -> ^SourceBuffer ---
		source_completion_get_page_size :: proc(self: ^SourceCompletion) -> glib.uint_ ---
		source_completion_get_type :: proc() -> gobj.Type ---
		source_completion_get_type :: proc() -> gobj.Type ---
		source_completion_get_view :: proc(self: ^SourceCompletion) -> ^SourceView ---
		source_completion_hide :: proc(self: ^SourceCompletion) ---
		source_completion_proposal_get_type :: proc() -> gobj.Type ---
		source_completion_proposal_get_type :: proc() -> gobj.Type ---
		source_completion_proposal_get_typed_text :: proc(proposal: ^SourceCompletionProposal) -> cstring ---
		source_completion_provider_activate :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal) ---
		source_completion_provider_display :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal, cell: ^SourceCompletionCell) ---
		source_completion_provider_get_priority :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext) -> i32 ---
		source_completion_provider_get_title :: proc(self: ^SourceCompletionProvider) -> cstring ---
		source_completion_provider_get_type :: proc() -> gobj.Type ---
		source_completion_provider_get_type :: proc() -> gobj.Type ---
		source_completion_provider_is_trigger :: proc(self: ^SourceCompletionProvider, iter: ^gtk.TextIter, ch: glib.unichar) -> glib.boolean ---
		source_completion_provider_key_activates :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal, keyval: glib.uint_, state: gtk.ModifierType) -> glib.boolean ---
		source_completion_provider_list_alternates :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal) -> ^glib.PtrArray ---
		source_completion_provider_populate_async :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		source_completion_provider_populate_finish :: proc(self: ^SourceCompletionProvider, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.ListModel ---
		source_completion_provider_refilter :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, model: ^gio.ListModel) ---
		source_completion_remove_provider :: proc(self: ^SourceCompletion, provider: ^SourceCompletionProvider) ---
		source_completion_set_page_size :: proc(self: ^SourceCompletion, page_size: glib.uint_) ---
		source_completion_show :: proc(self: ^SourceCompletion) ---
		source_completion_snippets_get_type :: proc() -> gobj.Type ---
		source_completion_snippets_get_type :: proc() -> gobj.Type ---
		source_completion_snippets_new :: proc() -> ^SourceCompletionSnippets ---
		source_completion_unblock_interactive :: proc(self: ^SourceCompletion) ---
		source_completion_words_get_type :: proc() -> gobj.Type ---
		source_completion_words_get_type :: proc() -> gobj.Type ---
		source_completion_words_new :: proc(title: cstring) -> ^SourceCompletionWords ---
		source_completion_words_register :: proc(words: ^SourceCompletionWords, buffer: ^gtk.TextBuffer) ---
		source_completion_words_unregister :: proc(words: ^SourceCompletionWords, buffer: ^gtk.TextBuffer) ---
		source_compression_type_get_type :: proc() -> gobj.Type ---
		source_compression_type_get_type :: proc() -> gobj.Type ---
		source_encoding_copy :: proc(enc: ^SourceEncoding) -> ^SourceEncoding ---
		source_encoding_free :: proc(enc: ^SourceEncoding) ---
		source_encoding_get_all :: proc() -> ^glib.SList ---
		source_encoding_get_charset :: proc(enc: ^SourceEncoding) -> cstring ---
		source_encoding_get_current :: proc() -> ^SourceEncoding ---
		source_encoding_get_default_candidates :: proc() -> ^glib.SList ---
		source_encoding_get_from_charset :: proc(charset: cstring) -> ^SourceEncoding ---
		source_encoding_get_name :: proc(enc: ^SourceEncoding) -> cstring ---
		source_encoding_get_type :: proc() -> gobj.Type ---
		source_encoding_get_type :: proc() -> gobj.Type ---
		source_encoding_get_utf8 :: proc() -> ^SourceEncoding ---
		source_encoding_to_string :: proc(enc: ^SourceEncoding) -> cstring ---
		source_file_check_file_on_disk :: proc(file: ^SourceFile) ---
		source_file_get_compression_type :: proc(file: ^SourceFile) -> SourceCompressionType ---
		source_file_get_encoding :: proc(file: ^SourceFile) -> ^SourceEncoding ---
		source_file_get_location :: proc(file: ^SourceFile) -> ^gio.File ---
		source_file_get_newline_type :: proc(file: ^SourceFile) -> SourceNewlineType ---
		source_file_get_type :: proc() -> gobj.Type ---
		source_file_get_type :: proc() -> gobj.Type ---
		source_file_is_deleted :: proc(file: ^SourceFile) -> glib.boolean ---
		source_file_is_externally_modified :: proc(file: ^SourceFile) -> glib.boolean ---
		source_file_is_local :: proc(file: ^SourceFile) -> glib.boolean ---
		source_file_is_readonly :: proc(file: ^SourceFile) -> glib.boolean ---
		source_file_loader_error_get_type :: proc() -> gobj.Type ---
		source_file_loader_error_get_type :: proc() -> gobj.Type ---
		source_file_loader_error_quark :: proc() -> glib.Quark ---
		source_file_loader_error_quark :: proc() -> glib.Quark ---
		source_file_loader_get_buffer :: proc(loader: ^SourceFileLoader) -> ^SourceBuffer ---
		source_file_loader_get_compression_type :: proc(loader: ^SourceFileLoader) -> SourceCompressionType ---
		source_file_loader_get_encoding :: proc(loader: ^SourceFileLoader) -> ^SourceEncoding ---
		source_file_loader_get_file :: proc(loader: ^SourceFileLoader) -> ^SourceFile ---
		source_file_loader_get_input_stream :: proc(loader: ^SourceFileLoader) -> ^gio.InputStream ---
		source_file_loader_get_location :: proc(loader: ^SourceFileLoader) -> ^gio.File ---
		source_file_loader_get_newline_type :: proc(loader: ^SourceFileLoader) -> SourceNewlineType ---
		source_file_loader_get_type :: proc() -> gobj.Type ---
		source_file_loader_get_type :: proc() -> gobj.Type ---
		source_file_loader_load_async :: proc(loader: ^SourceFileLoader, io_priority: glib.int_, cancellable: ^gio.Cancellable, progress_callback: gio.FileProgressCallback, progress_callback_data: glib.pointer, progress_callback_notify: glib.DestroyNotify, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		source_file_loader_load_finish :: proc(loader: ^SourceFileLoader, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		source_file_loader_new :: proc(buffer: ^SourceBuffer, file: ^SourceFile) -> ^SourceFileLoader ---
		source_file_loader_new_from_stream :: proc(buffer: ^SourceBuffer, file: ^SourceFile, stream: ^gio.InputStream) -> ^SourceFileLoader ---
		source_file_loader_set_candidate_encodings :: proc(loader: ^SourceFileLoader, candidate_encodings: ^glib.SList) ---
		source_file_new :: proc() -> ^SourceFile ---
		source_file_saver_error_get_type :: proc() -> gobj.Type ---
		source_file_saver_error_get_type :: proc() -> gobj.Type ---
		source_file_saver_error_quark :: proc() -> glib.Quark ---
		source_file_saver_error_quark :: proc() -> glib.Quark ---
		source_file_saver_flags_get_type :: proc() -> gobj.Type ---
		source_file_saver_flags_get_type :: proc() -> gobj.Type ---
		source_file_saver_get_buffer :: proc(saver: ^SourceFileSaver) -> ^SourceBuffer ---
		source_file_saver_get_compression_type :: proc(saver: ^SourceFileSaver) -> SourceCompressionType ---
		source_file_saver_get_encoding :: proc(saver: ^SourceFileSaver) -> ^SourceEncoding ---
		source_file_saver_get_file :: proc(saver: ^SourceFileSaver) -> ^SourceFile ---
		source_file_saver_get_flags :: proc(saver: ^SourceFileSaver) -> SourceFileSaverFlags ---
		source_file_saver_get_location :: proc(saver: ^SourceFileSaver) -> ^gio.File ---
		source_file_saver_get_newline_type :: proc(saver: ^SourceFileSaver) -> SourceNewlineType ---
		source_file_saver_get_type :: proc() -> gobj.Type ---
		source_file_saver_get_type :: proc() -> gobj.Type ---
		source_file_saver_new :: proc(buffer: ^SourceBuffer, file: ^SourceFile) -> ^SourceFileSaver ---
		source_file_saver_new_with_target :: proc(buffer: ^SourceBuffer, file: ^SourceFile, target_location: ^gio.File) -> ^SourceFileSaver ---
		source_file_saver_save_async :: proc(saver: ^SourceFileSaver, io_priority: glib.int_, cancellable: ^gio.Cancellable, progress_callback: gio.FileProgressCallback, progress_callback_data: glib.pointer, progress_callback_notify: glib.DestroyNotify, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		source_file_saver_save_finish :: proc(saver: ^SourceFileSaver, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		source_file_saver_set_compression_type :: proc(saver: ^SourceFileSaver, compression_type: SourceCompressionType) ---
		source_file_saver_set_encoding :: proc(saver: ^SourceFileSaver, encoding: ^SourceEncoding) ---
		source_file_saver_set_flags :: proc(saver: ^SourceFileSaver, flags: SourceFileSaverFlags) ---
		source_file_saver_set_newline_type :: proc(saver: ^SourceFileSaver, newline_type: SourceNewlineType) ---
		source_file_set_location :: proc(file: ^SourceFile, location: ^gio.File) ---
		source_file_set_mount_operation_factory :: proc(file: ^SourceFile, callback: SourceMountOperationFactory, user_data: glib.pointer, notify: glib.DestroyNotify) ---
		source_finalize :: proc() ---
		source_get_major_version :: proc() -> glib.uint_ ---
		source_get_micro_version :: proc() -> glib.uint_ ---
		source_get_minor_version :: proc() -> glib.uint_ ---
		source_gutter_get_type :: proc() -> gobj.Type ---
		source_gutter_get_type :: proc() -> gobj.Type ---
		source_gutter_get_view :: proc(gutter: ^SourceGutter) -> ^SourceView ---
		source_gutter_insert :: proc(gutter: ^SourceGutter, renderer: ^SourceGutterRenderer, position: glib.int_) -> glib.boolean ---
		source_gutter_lines_add_class :: proc(lines: ^SourceGutterLines, line: glib.uint_, name: cstring) ---
		source_gutter_lines_add_qclass :: proc(lines: ^SourceGutterLines, line: glib.uint_, qname: glib.Quark) ---
		source_gutter_lines_get_buffer :: proc(lines: ^SourceGutterLines) -> ^gtk.TextBuffer ---
		source_gutter_lines_get_first :: proc(lines: ^SourceGutterLines) -> glib.uint_ ---
		source_gutter_lines_get_iter_at_line :: proc(lines: ^SourceGutterLines, iter: ^gtk.TextIter, line: glib.uint_) ---
		source_gutter_lines_get_last :: proc(lines: ^SourceGutterLines) -> glib.uint_ ---
		source_gutter_lines_get_line_yrange :: proc(lines: ^SourceGutterLines, line: glib.uint_, mode: SourceGutterRendererAlignmentMode, y: ^glib.int_, height: ^glib.int_) ---
		source_gutter_lines_get_type :: proc() -> gobj.Type ---
		source_gutter_lines_get_type :: proc() -> gobj.Type ---
		source_gutter_lines_get_view :: proc(lines: ^SourceGutterLines) -> ^gtk.TextView ---
		source_gutter_lines_has_any_class :: proc(lines: ^SourceGutterLines, line: glib.uint_) -> glib.boolean ---
		source_gutter_lines_has_class :: proc(lines: ^SourceGutterLines, line: glib.uint_, name: cstring) -> glib.boolean ---
		source_gutter_lines_has_qclass :: proc(lines: ^SourceGutterLines, line: glib.uint_, qname: glib.Quark) -> glib.boolean ---
		source_gutter_lines_is_cursor :: proc(lines: ^SourceGutterLines, line: glib.uint_) -> glib.boolean ---
		source_gutter_lines_is_prelit :: proc(lines: ^SourceGutterLines, line: glib.uint_) -> glib.boolean ---
		source_gutter_lines_is_selected :: proc(lines: ^SourceGutterLines, line: glib.uint_) -> glib.boolean ---
		source_gutter_lines_remove_class :: proc(lines: ^SourceGutterLines, line: glib.uint_, name: cstring) ---
		source_gutter_lines_remove_qclass :: proc(lines: ^SourceGutterLines, line: glib.uint_, qname: glib.Quark) ---
		source_gutter_remove :: proc(gutter: ^SourceGutter, renderer: ^SourceGutterRenderer) ---
		source_gutter_renderer_activate :: proc(renderer: ^SourceGutterRenderer, iter: ^gtk.TextIter, area: ^gtk.Rectangle, button: glib.uint_, state: gtk.ModifierType, n_presses: glib.int_) ---
		source_gutter_renderer_align_cell :: proc(renderer: ^SourceGutterRenderer, line: glib.uint_, width: glib.float, height: glib.float, x: ^glib.float, y: ^glib.float) ---
		source_gutter_renderer_alignment_mode_get_type :: proc() -> gobj.Type ---
		source_gutter_renderer_alignment_mode_get_type :: proc() -> gobj.Type ---
		source_gutter_renderer_get_alignment_mode :: proc(renderer: ^SourceGutterRenderer) -> SourceGutterRendererAlignmentMode ---
		source_gutter_renderer_get_buffer :: proc(renderer: ^SourceGutterRenderer) -> ^SourceBuffer ---
		source_gutter_renderer_get_type :: proc() -> gobj.Type ---
		source_gutter_renderer_get_type :: proc() -> gobj.Type ---
		source_gutter_renderer_get_view :: proc(renderer: ^SourceGutterRenderer) -> ^SourceView ---
		source_gutter_renderer_get_xalign :: proc(renderer: ^SourceGutterRenderer) -> glib.float ---
		source_gutter_renderer_get_xpad :: proc(renderer: ^SourceGutterRenderer) -> glib.int_ ---
		source_gutter_renderer_get_yalign :: proc(renderer: ^SourceGutterRenderer) -> glib.float ---
		source_gutter_renderer_get_ypad :: proc(renderer: ^SourceGutterRenderer) -> glib.int_ ---
		source_gutter_renderer_pixbuf_get_gicon :: proc(renderer: ^SourceGutterRendererPixbuf) -> ^gio.Icon ---
		source_gutter_renderer_pixbuf_get_icon_name :: proc(renderer: ^SourceGutterRendererPixbuf) -> cstring ---
		source_gutter_renderer_pixbuf_get_paintable :: proc(renderer: ^SourceGutterRendererPixbuf) -> ^gtk.Paintable ---
		source_gutter_renderer_pixbuf_get_pixbuf :: proc(renderer: ^SourceGutterRendererPixbuf) -> ^pixbuf.Pixbuf ---
		source_gutter_renderer_pixbuf_get_type :: proc() -> gobj.Type ---
		source_gutter_renderer_pixbuf_get_type :: proc() -> gobj.Type ---
		source_gutter_renderer_pixbuf_new :: proc() -> ^SourceGutterRenderer ---
		source_gutter_renderer_pixbuf_overlay_paintable :: proc(renderer: ^SourceGutterRendererPixbuf, paintable: ^gtk.Paintable) ---
		source_gutter_renderer_pixbuf_set_gicon :: proc(renderer: ^SourceGutterRendererPixbuf, icon: ^gio.Icon) ---
		source_gutter_renderer_pixbuf_set_icon_name :: proc(renderer: ^SourceGutterRendererPixbuf, icon_name: cstring) ---
		source_gutter_renderer_pixbuf_set_paintable :: proc(renderer: ^SourceGutterRendererPixbuf, paintable: ^gtk.Paintable) ---
		source_gutter_renderer_pixbuf_set_pixbuf :: proc(renderer: ^SourceGutterRendererPixbuf, pixbuf: ^pixbuf.Pixbuf) ---
		source_gutter_renderer_query_activatable :: proc(renderer: ^SourceGutterRenderer, iter: ^gtk.TextIter, area: ^gtk.Rectangle) -> glib.boolean ---
		source_gutter_renderer_set_alignment_mode :: proc(renderer: ^SourceGutterRenderer, mode: SourceGutterRendererAlignmentMode) ---
		source_gutter_renderer_set_xalign :: proc(renderer: ^SourceGutterRenderer, xalign: glib.float) ---
		source_gutter_renderer_set_xpad :: proc(renderer: ^SourceGutterRenderer, xpad: glib.int_) ---
		source_gutter_renderer_set_yalign :: proc(renderer: ^SourceGutterRenderer, yalign: glib.float) ---
		source_gutter_renderer_set_ypad :: proc(renderer: ^SourceGutterRenderer, ypad: glib.int_) ---
		source_gutter_renderer_text_get_type :: proc() -> gobj.Type ---
		source_gutter_renderer_text_get_type :: proc() -> gobj.Type ---
		source_gutter_renderer_text_measure :: proc(renderer: ^SourceGutterRendererText, text: cstring, width: ^glib.int_, height: ^glib.int_) ---
		source_gutter_renderer_text_measure_markup :: proc(renderer: ^SourceGutterRendererText, markup: cstring, width: ^glib.int_, height: ^glib.int_) ---
		source_gutter_renderer_text_new :: proc() -> ^SourceGutterRenderer ---
		source_gutter_renderer_text_set_markup :: proc(renderer: ^SourceGutterRendererText, markup: cstring, length: glib.int_) ---
		source_gutter_renderer_text_set_text :: proc(renderer: ^SourceGutterRendererText, text: cstring, length: glib.int_) ---
		source_gutter_reorder :: proc(gutter: ^SourceGutter, renderer: ^SourceGutterRenderer, position: glib.int_) ---
		source_hover_add_provider :: proc(self: ^SourceHover, provider: ^SourceHoverProvider) ---
		source_hover_context_get_bounds :: proc(self: ^SourceHoverContext, begin: ^gtk.TextIter, end: ^gtk.TextIter) -> glib.boolean ---
		source_hover_context_get_buffer :: proc(self: ^SourceHoverContext) -> ^SourceBuffer ---
		source_hover_context_get_iter :: proc(self: ^SourceHoverContext, iter: ^gtk.TextIter) -> glib.boolean ---
		source_hover_context_get_type :: proc() -> gobj.Type ---
		source_hover_context_get_type :: proc() -> gobj.Type ---
		source_hover_context_get_view :: proc(self: ^SourceHoverContext) -> ^SourceView ---
		source_hover_display_append :: proc(self: ^SourceHoverDisplay, child: ^gtk.Widget) ---
		source_hover_display_get_type :: proc() -> gobj.Type ---
		source_hover_display_get_type :: proc() -> gobj.Type ---
		source_hover_display_insert_after :: proc(self: ^SourceHoverDisplay, child: ^gtk.Widget, sibling: ^gtk.Widget) ---
		source_hover_display_prepend :: proc(self: ^SourceHoverDisplay, child: ^gtk.Widget) ---
		source_hover_display_remove :: proc(self: ^SourceHoverDisplay, child: ^gtk.Widget) ---
		source_hover_get_type :: proc() -> gobj.Type ---
		source_hover_get_type :: proc() -> gobj.Type ---
		source_hover_provider_get_type :: proc() -> gobj.Type ---
		source_hover_provider_get_type :: proc() -> gobj.Type ---
		source_hover_provider_populate_async :: proc(self: ^SourceHoverProvider, context_p: ^SourceHoverContext, display: ^SourceHoverDisplay, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		source_hover_provider_populate_finish :: proc(self: ^SourceHoverProvider, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		source_hover_remove_provider :: proc(self: ^SourceHover, provider: ^SourceHoverProvider) ---
		source_indenter_get_type :: proc() -> gobj.Type ---
		source_indenter_get_type :: proc() -> gobj.Type ---
		source_indenter_indent :: proc(self: ^SourceIndenter, view: ^SourceView, iter: ^gtk.TextIter) ---
		source_indenter_is_trigger :: proc(self: ^SourceIndenter, view: ^SourceView, location: ^gtk.TextIter, state: gtk.ModifierType, keyval: glib.uint_) -> glib.boolean ---
		source_init :: proc() ---
		source_language_get_globs :: proc(language: ^SourceLanguage) -> ^cstring ---
		source_language_get_hidden :: proc(language: ^SourceLanguage) -> glib.boolean ---
		source_language_get_id :: proc(language: ^SourceLanguage) -> cstring ---
		source_language_get_metadata :: proc(language: ^SourceLanguage, name: cstring) -> cstring ---
		source_language_get_mime_types :: proc(language: ^SourceLanguage) -> ^cstring ---
		source_language_get_name :: proc(language: ^SourceLanguage) -> cstring ---
		source_language_get_section :: proc(language: ^SourceLanguage) -> cstring ---
		source_language_get_style_fallback :: proc(language: ^SourceLanguage, style_id: cstring) -> cstring ---
		source_language_get_style_ids :: proc(language: ^SourceLanguage) -> ^cstring ---
		source_language_get_style_name :: proc(language: ^SourceLanguage, style_id: cstring) -> cstring ---
		source_language_get_type :: proc() -> gobj.Type ---
		source_language_get_type :: proc() -> gobj.Type ---
		source_language_manager_append_search_path :: proc(lm: ^SourceLanguageManager, path: cstring) ---
		source_language_manager_get_default :: proc() -> ^SourceLanguageManager ---
		source_language_manager_get_language :: proc(lm: ^SourceLanguageManager, id: cstring) -> ^SourceLanguage ---
		source_language_manager_get_language_ids :: proc(lm: ^SourceLanguageManager) -> ^cstring ---
		source_language_manager_get_search_path :: proc(lm: ^SourceLanguageManager) -> ^cstring ---
		source_language_manager_get_type :: proc() -> gobj.Type ---
		source_language_manager_get_type :: proc() -> gobj.Type ---
		source_language_manager_guess_language :: proc(lm: ^SourceLanguageManager, filename: cstring, content_type: cstring) -> ^SourceLanguage ---
		source_language_manager_new :: proc() -> ^SourceLanguageManager ---
		source_language_manager_prepend_search_path :: proc(lm: ^SourceLanguageManager, path: cstring) ---
		source_language_manager_set_search_path :: proc(lm: ^SourceLanguageManager, dirs: [^]cstring) ---
		source_map_get_type :: proc() -> gobj.Type ---
		source_map_get_type :: proc() -> gobj.Type ---
		source_map_get_view :: proc(map_p: ^SourceMap) -> ^SourceView ---
		source_map_new :: proc() -> ^gtk.Widget ---
		source_map_set_view :: proc(map_p: ^SourceMap, view: ^SourceView) ---
		source_mark_attributes_get_background :: proc(attributes: ^SourceMarkAttributes, background: ^gtk.RGBA) -> glib.boolean ---
		source_mark_attributes_get_gicon :: proc(attributes: ^SourceMarkAttributes) -> ^gio.Icon ---
		source_mark_attributes_get_icon_name :: proc(attributes: ^SourceMarkAttributes) -> cstring ---
		source_mark_attributes_get_pixbuf :: proc(attributes: ^SourceMarkAttributes) -> ^pixbuf.Pixbuf ---
		source_mark_attributes_get_tooltip_markup :: proc(attributes: ^SourceMarkAttributes, mark: ^SourceMark) -> cstring ---
		source_mark_attributes_get_tooltip_text :: proc(attributes: ^SourceMarkAttributes, mark: ^SourceMark) -> cstring ---
		source_mark_attributes_get_type :: proc() -> gobj.Type ---
		source_mark_attributes_get_type :: proc() -> gobj.Type ---
		source_mark_attributes_new :: proc() -> ^SourceMarkAttributes ---
		source_mark_attributes_render_icon :: proc(attributes: ^SourceMarkAttributes, widget: ^gtk.Widget, size_p: glib.int_) -> ^gtk.Paintable ---
		source_mark_attributes_set_background :: proc(attributes: ^SourceMarkAttributes, background: ^gtk.RGBA) ---
		source_mark_attributes_set_gicon :: proc(attributes: ^SourceMarkAttributes, gicon: ^gio.Icon) ---
		source_mark_attributes_set_icon_name :: proc(attributes: ^SourceMarkAttributes, icon_name: cstring) ---
		source_mark_attributes_set_pixbuf :: proc(attributes: ^SourceMarkAttributes, pixbuf: ^pixbuf.Pixbuf) ---
		source_mark_get_category :: proc(mark: ^SourceMark) -> cstring ---
		source_mark_get_type :: proc() -> gobj.Type ---
		source_mark_get_type :: proc() -> gobj.Type ---
		source_mark_new :: proc(name: cstring, category: cstring) -> ^SourceMark ---
		source_mark_next :: proc(mark: ^SourceMark, category: cstring) -> ^SourceMark ---
		source_mark_prev :: proc(mark: ^SourceMark, category: cstring) -> ^SourceMark ---
		source_newline_type_get_type :: proc() -> gobj.Type ---
		source_newline_type_get_type :: proc() -> gobj.Type ---
		source_print_compositor_draw_page :: proc(compositor: ^SourcePrintCompositor, context_p: ^gtk.PrintContext, page_nr: glib.int_) ---
		source_print_compositor_get_body_font_name :: proc(compositor: ^SourcePrintCompositor) -> cstring ---
		source_print_compositor_get_bottom_margin :: proc(compositor: ^SourcePrintCompositor, unit: gtk.Unit) -> glib.double ---
		source_print_compositor_get_buffer :: proc(compositor: ^SourcePrintCompositor) -> ^SourceBuffer ---
		source_print_compositor_get_footer_font_name :: proc(compositor: ^SourcePrintCompositor) -> cstring ---
		source_print_compositor_get_header_font_name :: proc(compositor: ^SourcePrintCompositor) -> cstring ---
		source_print_compositor_get_highlight_syntax :: proc(compositor: ^SourcePrintCompositor) -> glib.boolean ---
		source_print_compositor_get_left_margin :: proc(compositor: ^SourcePrintCompositor, unit: gtk.Unit) -> glib.double ---
		source_print_compositor_get_line_numbers_font_name :: proc(compositor: ^SourcePrintCompositor) -> cstring ---
		source_print_compositor_get_n_pages :: proc(compositor: ^SourcePrintCompositor) -> glib.int_ ---
		source_print_compositor_get_pagination_progress :: proc(compositor: ^SourcePrintCompositor) -> glib.double ---
		source_print_compositor_get_print_footer :: proc(compositor: ^SourcePrintCompositor) -> glib.boolean ---
		source_print_compositor_get_print_header :: proc(compositor: ^SourcePrintCompositor) -> glib.boolean ---
		source_print_compositor_get_print_line_numbers :: proc(compositor: ^SourcePrintCompositor) -> glib.uint_ ---
		source_print_compositor_get_right_margin :: proc(compositor: ^SourcePrintCompositor, unit: gtk.Unit) -> glib.double ---
		source_print_compositor_get_tab_width :: proc(compositor: ^SourcePrintCompositor) -> glib.uint_ ---
		source_print_compositor_get_top_margin :: proc(compositor: ^SourcePrintCompositor, unit: gtk.Unit) -> glib.double ---
		source_print_compositor_get_type :: proc() -> gobj.Type ---
		source_print_compositor_get_type :: proc() -> gobj.Type ---
		source_print_compositor_get_wrap_mode :: proc(compositor: ^SourcePrintCompositor) -> gtk.WrapMode ---
		source_print_compositor_ignore_tag :: proc(compositor: ^SourcePrintCompositor, tag: ^gtk.TextTag) ---
		source_print_compositor_new :: proc(buffer: ^SourceBuffer) -> ^SourcePrintCompositor ---
		source_print_compositor_new_from_view :: proc(view: ^SourceView) -> ^SourcePrintCompositor ---
		source_print_compositor_paginate :: proc(compositor: ^SourcePrintCompositor, context_p: ^gtk.PrintContext) -> glib.boolean ---
		source_print_compositor_set_body_font_name :: proc(compositor: ^SourcePrintCompositor, font_name: cstring) ---
		source_print_compositor_set_bottom_margin :: proc(compositor: ^SourcePrintCompositor, margin: glib.double, unit: gtk.Unit) ---
		source_print_compositor_set_footer_font_name :: proc(compositor: ^SourcePrintCompositor, font_name: cstring) ---
		source_print_compositor_set_footer_format :: proc(compositor: ^SourcePrintCompositor, separator: glib.boolean, left: cstring, center: cstring, right: cstring) ---
		source_print_compositor_set_header_font_name :: proc(compositor: ^SourcePrintCompositor, font_name: cstring) ---
		source_print_compositor_set_header_format :: proc(compositor: ^SourcePrintCompositor, separator: glib.boolean, left: cstring, center: cstring, right: cstring) ---
		source_print_compositor_set_highlight_syntax :: proc(compositor: ^SourcePrintCompositor, highlight: glib.boolean) ---
		source_print_compositor_set_left_margin :: proc(compositor: ^SourcePrintCompositor, margin: glib.double, unit: gtk.Unit) ---
		source_print_compositor_set_line_numbers_font_name :: proc(compositor: ^SourcePrintCompositor, font_name: cstring) ---
		source_print_compositor_set_print_footer :: proc(compositor: ^SourcePrintCompositor, print: glib.boolean) ---
		source_print_compositor_set_print_header :: proc(compositor: ^SourcePrintCompositor, print: glib.boolean) ---
		source_print_compositor_set_print_line_numbers :: proc(compositor: ^SourcePrintCompositor, interval: glib.uint_) ---
		source_print_compositor_set_right_margin :: proc(compositor: ^SourcePrintCompositor, margin: glib.double, unit: gtk.Unit) ---
		source_print_compositor_set_tab_width :: proc(compositor: ^SourcePrintCompositor, width: glib.uint_) ---
		source_print_compositor_set_top_margin :: proc(compositor: ^SourcePrintCompositor, margin: glib.double, unit: gtk.Unit) ---
		source_print_compositor_set_wrap_mode :: proc(compositor: ^SourcePrintCompositor, wrap_mode: gtk.WrapMode) ---
		source_region_add_region :: proc(region: ^SourceRegion, region_to_add: ^SourceRegion) ---
		source_region_add_subregion :: proc(region: ^SourceRegion, _start: ^gtk.TextIter, _end: ^gtk.TextIter) ---
		source_region_get_bounds :: proc(region: ^SourceRegion, start: ^gtk.TextIter, end: ^gtk.TextIter) -> glib.boolean ---
		source_region_get_buffer :: proc(region: ^SourceRegion) -> ^gtk.TextBuffer ---
		source_region_get_start_region_iter :: proc(region: ^SourceRegion, iter: ^SourceRegionIter) ---
		source_region_get_type :: proc() -> gobj.Type ---
		source_region_get_type :: proc() -> gobj.Type ---
		source_region_intersect_region :: proc(region1: ^SourceRegion, region2: ^SourceRegion) -> ^SourceRegion ---
		source_region_intersect_subregion :: proc(region: ^SourceRegion, _start: ^gtk.TextIter, _end: ^gtk.TextIter) -> ^SourceRegion ---
		source_region_is_empty :: proc(region: ^SourceRegion) -> glib.boolean ---
		source_region_iter_get_subregion :: proc(iter: ^SourceRegionIter, start: ^gtk.TextIter, end: ^gtk.TextIter) -> glib.boolean ---
		source_region_iter_is_end :: proc(iter: ^SourceRegionIter) -> glib.boolean ---
		source_region_iter_next :: proc(iter: ^SourceRegionIter) -> glib.boolean ---
		source_region_new :: proc(buffer: ^gtk.TextBuffer) -> ^SourceRegion ---
		source_region_subtract_region :: proc(region: ^SourceRegion, region_to_subtract: ^SourceRegion) ---
		source_region_subtract_subregion :: proc(region: ^SourceRegion, _start: ^gtk.TextIter, _end: ^gtk.TextIter) ---
		source_region_to_string :: proc(region: ^SourceRegion) -> cstring ---
		source_scheduler_add :: proc(callback: SourceSchedulerCallback, user_data: glib.pointer) -> glib.size ---
		source_scheduler_add_full :: proc(callback: SourceSchedulerCallback, user_data: glib.pointer, notify: glib.DestroyNotify) -> glib.size ---
		source_scheduler_remove :: proc(handler_id: glib.size) ---
		source_search_context_backward :: proc(search: ^SourceSearchContext, iter: ^gtk.TextIter, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter, has_wrapped_around: ^glib.boolean) -> glib.boolean ---
		source_search_context_backward_async :: proc(search: ^SourceSearchContext, iter: ^gtk.TextIter, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		source_search_context_backward_finish :: proc(search: ^SourceSearchContext, result: ^gio.AsyncResult, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter, has_wrapped_around: ^glib.boolean, error: ^^glib.Error) -> glib.boolean ---
		source_search_context_forward :: proc(search: ^SourceSearchContext, iter: ^gtk.TextIter, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter, has_wrapped_around: ^glib.boolean) -> glib.boolean ---
		source_search_context_forward_async :: proc(search: ^SourceSearchContext, iter: ^gtk.TextIter, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		source_search_context_forward_finish :: proc(search: ^SourceSearchContext, result: ^gio.AsyncResult, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter, has_wrapped_around: ^glib.boolean, error: ^^glib.Error) -> glib.boolean ---
		source_search_context_get_buffer :: proc(search: ^SourceSearchContext) -> ^SourceBuffer ---
		source_search_context_get_highlight :: proc(search: ^SourceSearchContext) -> glib.boolean ---
		source_search_context_get_match_style :: proc(search: ^SourceSearchContext) -> ^SourceStyle ---
		source_search_context_get_occurrence_position :: proc(search: ^SourceSearchContext, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter) -> glib.int_ ---
		source_search_context_get_occurrences_count :: proc(search: ^SourceSearchContext) -> glib.int_ ---
		source_search_context_get_regex_error :: proc(search: ^SourceSearchContext) -> ^glib.Error ---
		source_search_context_get_settings :: proc(search: ^SourceSearchContext) -> ^SourceSearchSettings ---
		source_search_context_get_type :: proc() -> gobj.Type ---
		source_search_context_get_type :: proc() -> gobj.Type ---
		source_search_context_new :: proc(buffer: ^SourceBuffer, settings: ^SourceSearchSettings) -> ^SourceSearchContext ---
		source_search_context_replace :: proc(search: ^SourceSearchContext, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter, replace: cstring, replace_length: glib.int_, error: ^^glib.Error) -> glib.boolean ---
		source_search_context_replace_all :: proc(search: ^SourceSearchContext, replace: cstring, replace_length: glib.int_, error: ^^glib.Error) -> glib.uint_ ---
		source_search_context_set_highlight :: proc(search: ^SourceSearchContext, highlight: glib.boolean) ---
		source_search_context_set_match_style :: proc(search: ^SourceSearchContext, match_style: ^SourceStyle) ---
		source_search_settings_get_at_word_boundaries :: proc(settings: ^SourceSearchSettings) -> glib.boolean ---
		source_search_settings_get_case_sensitive :: proc(settings: ^SourceSearchSettings) -> glib.boolean ---
		source_search_settings_get_regex_enabled :: proc(settings: ^SourceSearchSettings) -> glib.boolean ---
		source_search_settings_get_search_text :: proc(settings: ^SourceSearchSettings) -> cstring ---
		source_search_settings_get_type :: proc() -> gobj.Type ---
		source_search_settings_get_type :: proc() -> gobj.Type ---
		source_search_settings_get_visible_only :: proc(settings: ^SourceSearchSettings) -> glib.boolean ---
		source_search_settings_get_wrap_around :: proc(settings: ^SourceSearchSettings) -> glib.boolean ---
		source_search_settings_new :: proc() -> ^SourceSearchSettings ---
		source_search_settings_set_at_word_boundaries :: proc(settings: ^SourceSearchSettings, at_word_boundaries: glib.boolean) ---
		source_search_settings_set_case_sensitive :: proc(settings: ^SourceSearchSettings, case_sensitive: glib.boolean) ---
		source_search_settings_set_regex_enabled :: proc(settings: ^SourceSearchSettings, regex_enabled: glib.boolean) ---
		source_search_settings_set_search_text :: proc(settings: ^SourceSearchSettings, search_text: cstring) ---
		source_search_settings_set_visible_only :: proc(settings: ^SourceSearchSettings, visible_only: glib.boolean) ---
		source_search_settings_set_wrap_around :: proc(settings: ^SourceSearchSettings, wrap_around: glib.boolean) ---
		source_smart_home_end_type_get_type :: proc() -> gobj.Type ---
		source_smart_home_end_type_get_type :: proc() -> gobj.Type ---
		source_snippet_add_chunk :: proc(snippet: ^SourceSnippet, chunk: ^SourceSnippetChunk) ---
		source_snippet_chunk_copy :: proc(chunk: ^SourceSnippetChunk) -> ^SourceSnippetChunk ---
		source_snippet_chunk_get_context :: proc(chunk: ^SourceSnippetChunk) -> ^SourceSnippetContext ---
		source_snippet_chunk_get_focus_position :: proc(chunk: ^SourceSnippetChunk) -> glib.int_ ---
		source_snippet_chunk_get_spec :: proc(chunk: ^SourceSnippetChunk) -> cstring ---
		source_snippet_chunk_get_text :: proc(chunk: ^SourceSnippetChunk) -> cstring ---
		source_snippet_chunk_get_text_set :: proc(chunk: ^SourceSnippetChunk) -> glib.boolean ---
		source_snippet_chunk_get_tooltip_text :: proc(chunk: ^SourceSnippetChunk) -> cstring ---
		source_snippet_chunk_get_type :: proc() -> gobj.Type ---
		source_snippet_chunk_get_type :: proc() -> gobj.Type ---
		source_snippet_chunk_new :: proc() -> ^SourceSnippetChunk ---
		source_snippet_chunk_set_context :: proc(chunk: ^SourceSnippetChunk, context_p: ^SourceSnippetContext) ---
		source_snippet_chunk_set_focus_position :: proc(chunk: ^SourceSnippetChunk, focus_position: glib.int_) ---
		source_snippet_chunk_set_spec :: proc(chunk: ^SourceSnippetChunk, spec: cstring) ---
		source_snippet_chunk_set_text :: proc(chunk: ^SourceSnippetChunk, text: cstring) ---
		source_snippet_chunk_set_text_set :: proc(chunk: ^SourceSnippetChunk, text_set: glib.boolean) ---
		source_snippet_chunk_set_tooltip_text :: proc(chunk: ^SourceSnippetChunk, tooltip_text: cstring) ---
		source_snippet_context_clear_variables :: proc(self: ^SourceSnippetContext) ---
		source_snippet_context_expand :: proc(self: ^SourceSnippetContext, input: cstring) -> cstring ---
		source_snippet_context_get_type :: proc() -> gobj.Type ---
		source_snippet_context_get_type :: proc() -> gobj.Type ---
		source_snippet_context_get_variable :: proc(self: ^SourceSnippetContext, key: cstring) -> cstring ---
		source_snippet_context_new :: proc() -> ^SourceSnippetContext ---
		source_snippet_context_set_constant :: proc(self: ^SourceSnippetContext, key: cstring, value: cstring) ---
		source_snippet_context_set_line_prefix :: proc(self: ^SourceSnippetContext, line_prefix: cstring) ---
		source_snippet_context_set_tab_width :: proc(self: ^SourceSnippetContext, tab_width: glib.int_) ---
		source_snippet_context_set_use_spaces :: proc(self: ^SourceSnippetContext, use_spaces: glib.boolean) ---
		source_snippet_context_set_variable :: proc(self: ^SourceSnippetContext, key: cstring, value: cstring) ---
		source_snippet_copy :: proc(snippet: ^SourceSnippet) -> ^SourceSnippet ---
		source_snippet_get_context :: proc(snippet: ^SourceSnippet) -> ^SourceSnippetContext ---
		source_snippet_get_description :: proc(snippet: ^SourceSnippet) -> cstring ---
		source_snippet_get_focus_position :: proc(snippet: ^SourceSnippet) -> glib.int_ ---
		source_snippet_get_language_id :: proc(snippet: ^SourceSnippet) -> cstring ---
		source_snippet_get_n_chunks :: proc(snippet: ^SourceSnippet) -> glib.uint_ ---
		source_snippet_get_name :: proc(snippet: ^SourceSnippet) -> cstring ---
		source_snippet_get_nth_chunk :: proc(snippet: ^SourceSnippet, nth: glib.uint_) -> ^SourceSnippetChunk ---
		source_snippet_get_trigger :: proc(snippet: ^SourceSnippet) -> cstring ---
		source_snippet_get_type :: proc() -> gobj.Type ---
		source_snippet_get_type :: proc() -> gobj.Type ---
		source_snippet_manager_get_default :: proc() -> ^SourceSnippetManager ---
		source_snippet_manager_get_search_path :: proc(self: ^SourceSnippetManager) -> ^cstring ---
		source_snippet_manager_get_snippet :: proc(self: ^SourceSnippetManager, group: cstring, language_id: cstring, trigger: cstring) -> ^SourceSnippet ---
		source_snippet_manager_get_type :: proc() -> gobj.Type ---
		source_snippet_manager_get_type :: proc() -> gobj.Type ---
		source_snippet_manager_list_all :: proc(self: ^SourceSnippetManager) -> ^gio.ListModel ---
		source_snippet_manager_list_groups :: proc(self: ^SourceSnippetManager) -> ^cstring ---
		source_snippet_manager_list_matching :: proc(self: ^SourceSnippetManager, group: cstring, language_id: cstring, trigger_prefix: cstring) -> ^gio.ListModel ---
		source_snippet_manager_set_search_path :: proc(self: ^SourceSnippetManager, dirs: [^]cstring) ---
		source_snippet_new :: proc(trigger: cstring, language_id: cstring) -> ^SourceSnippet ---
		source_snippet_new_parsed :: proc(text: cstring, error: ^^glib.Error) -> ^SourceSnippet ---
		source_snippet_set_description :: proc(snippet: ^SourceSnippet, description: cstring) ---
		source_snippet_set_language_id :: proc(snippet: ^SourceSnippet, language_id: cstring) ---
		source_snippet_set_name :: proc(snippet: ^SourceSnippet, name: cstring) ---
		source_snippet_set_trigger :: proc(snippet: ^SourceSnippet, trigger: cstring) ---
		source_sort_flags_get_type :: proc() -> gobj.Type ---
		source_sort_flags_get_type :: proc() -> gobj.Type ---
		source_space_drawer_bind_matrix_setting :: proc(drawer: ^SourceSpaceDrawer, settings: ^gio.Settings, key: cstring, flags: gio.SettingsBindFlags) ---
		source_space_drawer_get_enable_matrix :: proc(drawer: ^SourceSpaceDrawer) -> glib.boolean ---
		source_space_drawer_get_matrix :: proc(drawer: ^SourceSpaceDrawer) -> ^glib.Variant ---
		source_space_drawer_get_type :: proc() -> gobj.Type ---
		source_space_drawer_get_type :: proc() -> gobj.Type ---
		source_space_drawer_get_types_for_locations :: proc(drawer: ^SourceSpaceDrawer, locations: SourceSpaceLocationFlags) -> SourceSpaceTypeFlags ---
		source_space_drawer_new :: proc() -> ^SourceSpaceDrawer ---
		source_space_drawer_set_enable_matrix :: proc(drawer: ^SourceSpaceDrawer, enable_matrix: glib.boolean) ---
		source_space_drawer_set_matrix :: proc(drawer: ^SourceSpaceDrawer, matrix_p: ^glib.Variant) ---
		source_space_drawer_set_types_for_locations :: proc(drawer: ^SourceSpaceDrawer, locations: SourceSpaceLocationFlags, types: SourceSpaceTypeFlags) ---
		source_space_location_flags_get_type :: proc() -> gobj.Type ---
		source_space_location_flags_get_type :: proc() -> gobj.Type ---
		source_space_type_flags_get_type :: proc() -> gobj.Type ---
		source_space_type_flags_get_type :: proc() -> gobj.Type ---
		source_style_apply :: proc(style: ^SourceStyle, tag: ^gtk.TextTag) ---
		source_style_copy :: proc(style: ^SourceStyle) -> ^SourceStyle ---
		source_style_get_type :: proc() -> gobj.Type ---
		source_style_get_type :: proc() -> gobj.Type ---
		source_style_scheme_chooser_button_get_type :: proc() -> gobj.Type ---
		source_style_scheme_chooser_button_get_type :: proc() -> gobj.Type ---
		source_style_scheme_chooser_button_new :: proc() -> ^gtk.Widget ---
		source_style_scheme_chooser_get_style_scheme :: proc(chooser: ^SourceStyleSchemeChooser) -> ^SourceStyleScheme ---
		source_style_scheme_chooser_get_type :: proc() -> gobj.Type ---
		source_style_scheme_chooser_get_type :: proc() -> gobj.Type ---
		source_style_scheme_chooser_set_style_scheme :: proc(chooser: ^SourceStyleSchemeChooser, scheme: ^SourceStyleScheme) ---
		source_style_scheme_chooser_widget_get_type :: proc() -> gobj.Type ---
		source_style_scheme_chooser_widget_get_type :: proc() -> gobj.Type ---
		source_style_scheme_chooser_widget_new :: proc() -> ^gtk.Widget ---
		source_style_scheme_get_authors :: proc(scheme: ^SourceStyleScheme) -> ^cstring ---
		source_style_scheme_get_description :: proc(scheme: ^SourceStyleScheme) -> cstring ---
		source_style_scheme_get_filename :: proc(scheme: ^SourceStyleScheme) -> cstring ---
		source_style_scheme_get_id :: proc(scheme: ^SourceStyleScheme) -> cstring ---
		source_style_scheme_get_metadata :: proc(scheme: ^SourceStyleScheme, name: cstring) -> cstring ---
		source_style_scheme_get_name :: proc(scheme: ^SourceStyleScheme) -> cstring ---
		source_style_scheme_get_style :: proc(scheme: ^SourceStyleScheme, style_id: cstring) -> ^SourceStyle ---
		source_style_scheme_get_type :: proc() -> gobj.Type ---
		source_style_scheme_get_type :: proc() -> gobj.Type ---
		source_style_scheme_manager_append_search_path :: proc(manager: ^SourceStyleSchemeManager, path: cstring) ---
		source_style_scheme_manager_force_rescan :: proc(manager: ^SourceStyleSchemeManager) ---
		source_style_scheme_manager_get_default :: proc() -> ^SourceStyleSchemeManager ---
		source_style_scheme_manager_get_scheme :: proc(manager: ^SourceStyleSchemeManager, scheme_id: cstring) -> ^SourceStyleScheme ---
		source_style_scheme_manager_get_scheme_ids :: proc(manager: ^SourceStyleSchemeManager) -> ^cstring ---
		source_style_scheme_manager_get_search_path :: proc(manager: ^SourceStyleSchemeManager) -> ^cstring ---
		source_style_scheme_manager_get_type :: proc() -> gobj.Type ---
		source_style_scheme_manager_get_type :: proc() -> gobj.Type ---
		source_style_scheme_manager_new :: proc() -> ^SourceStyleSchemeManager ---
		source_style_scheme_manager_prepend_search_path :: proc(manager: ^SourceStyleSchemeManager, path: cstring) ---
		source_style_scheme_manager_set_search_path :: proc(manager: ^SourceStyleSchemeManager, path: ^cstring) ---
		source_style_scheme_preview_get_scheme :: proc(self: ^SourceStyleSchemePreview) -> ^SourceStyleScheme ---
		source_style_scheme_preview_get_selected :: proc(self: ^SourceStyleSchemePreview) -> glib.boolean ---
		source_style_scheme_preview_get_type :: proc() -> gobj.Type ---
		source_style_scheme_preview_get_type :: proc() -> gobj.Type ---
		source_style_scheme_preview_new :: proc(scheme: ^SourceStyleScheme) -> ^gtk.Widget ---
		source_style_scheme_preview_set_selected :: proc(self: ^SourceStyleSchemePreview, selected: glib.boolean) ---
		source_tag_get_type :: proc() -> gobj.Type ---
		source_tag_get_type :: proc() -> gobj.Type ---
		source_tag_new :: proc(name: cstring) -> ^gtk.TextTag ---
		source_utils_escape_search_text :: proc(text: cstring) -> cstring ---
		source_utils_unescape_search_text :: proc(text: cstring) -> cstring ---
		source_view_get_auto_indent :: proc(view: ^SourceView) -> glib.boolean ---
		source_view_get_background_pattern :: proc(view: ^SourceView) -> SourceBackgroundPatternType ---
		source_view_get_completion :: proc(view: ^SourceView) -> ^SourceCompletion ---
		source_view_get_enable_snippets :: proc(view: ^SourceView) -> glib.boolean ---
		source_view_get_gutter :: proc(view: ^SourceView, window_type: gtk.TextWindowType) -> ^SourceGutter ---
		source_view_get_highlight_current_line :: proc(view: ^SourceView) -> glib.boolean ---
		source_view_get_hover :: proc(view: ^SourceView) -> ^SourceHover ---
		source_view_get_indent_on_tab :: proc(view: ^SourceView) -> glib.boolean ---
		source_view_get_indent_width :: proc(view: ^SourceView) -> glib.int_ ---
		source_view_get_indenter :: proc(view: ^SourceView) -> ^SourceIndenter ---
		source_view_get_insert_spaces_instead_of_tabs :: proc(view: ^SourceView) -> glib.boolean ---
		source_view_get_mark_attributes :: proc(view: ^SourceView, category: cstring, priority: ^glib.int_) -> ^SourceMarkAttributes ---
		source_view_get_right_margin_position :: proc(view: ^SourceView) -> glib.uint_ ---
		source_view_get_show_line_marks :: proc(view: ^SourceView) -> glib.boolean ---
		source_view_get_show_line_numbers :: proc(view: ^SourceView) -> glib.boolean ---
		source_view_get_show_right_margin :: proc(view: ^SourceView) -> glib.boolean ---
		source_view_get_smart_backspace :: proc(view: ^SourceView) -> glib.boolean ---
		source_view_get_smart_home_end :: proc(view: ^SourceView) -> SourceSmartHomeEndType ---
		source_view_get_space_drawer :: proc(view: ^SourceView) -> ^SourceSpaceDrawer ---
		source_view_get_tab_width :: proc(view: ^SourceView) -> glib.uint_ ---
		source_view_get_type :: proc() -> gobj.Type ---
		source_view_get_type :: proc() -> gobj.Type ---
		source_view_get_visual_column :: proc(view: ^SourceView, iter: ^gtk.TextIter) -> glib.uint_ ---
		source_view_gutter_position_get_type :: proc() -> gobj.Type ---
		source_view_gutter_position_get_type :: proc() -> gobj.Type ---
		source_view_indent_lines :: proc(view: ^SourceView, start: ^gtk.TextIter, end: ^gtk.TextIter) ---
		source_view_new :: proc() -> ^gtk.Widget ---
		source_view_new_with_buffer :: proc(buffer: ^SourceBuffer) -> ^gtk.Widget ---
		source_view_push_snippet :: proc(view: ^SourceView, snippet: ^SourceSnippet, location: ^gtk.TextIter) ---
		source_view_set_auto_indent :: proc(view: ^SourceView, enable: glib.boolean) ---
		source_view_set_background_pattern :: proc(view: ^SourceView, background_pattern: SourceBackgroundPatternType) ---
		source_view_set_enable_snippets :: proc(view: ^SourceView, enable_snippets: glib.boolean) ---
		source_view_set_highlight_current_line :: proc(view: ^SourceView, highlight: glib.boolean) ---
		source_view_set_indent_on_tab :: proc(view: ^SourceView, enable: glib.boolean) ---
		source_view_set_indent_width :: proc(view: ^SourceView, width: glib.int_) ---
		source_view_set_indenter :: proc(view: ^SourceView, indenter: ^SourceIndenter) ---
		source_view_set_insert_spaces_instead_of_tabs :: proc(view: ^SourceView, enable: glib.boolean) ---
		source_view_set_mark_attributes :: proc(view: ^SourceView, category: cstring, attributes: ^SourceMarkAttributes, priority: glib.int_) ---
		source_view_set_right_margin_position :: proc(view: ^SourceView, pos: glib.uint_) ---
		source_view_set_show_line_marks :: proc(view: ^SourceView, show: glib.boolean) ---
		source_view_set_show_line_numbers :: proc(view: ^SourceView, show: glib.boolean) ---
		source_view_set_show_right_margin :: proc(view: ^SourceView, show: glib.boolean) ---
		source_view_set_smart_backspace :: proc(view: ^SourceView, smart_backspace: glib.boolean) ---
		source_view_set_smart_home_end :: proc(view: ^SourceView, smart_home_end: SourceSmartHomeEndType) ---
		source_view_set_tab_width :: proc(view: ^SourceView, width: glib.uint_) ---
		source_view_unindent_lines :: proc(view: ^SourceView, start: ^gtk.TextIter, end: ^gtk.TextIter) ---
		source_vim_im_context_execute_command :: proc(self: ^SourceVimIMContext, command: cstring) ---
		source_vim_im_context_get_command_bar_text :: proc(self: ^SourceVimIMContext) -> cstring ---
		source_vim_im_context_get_command_text :: proc(self: ^SourceVimIMContext) -> cstring ---
		source_vim_im_context_get_type :: proc() -> gobj.Type ---
		source_vim_im_context_get_type :: proc() -> gobj.Type ---
		source_vim_im_context_new :: proc() -> ^gtk.IMContext ---

	types
		SourceBackgroundPatternType :: enum u32 {SOURCE_BACKGROUND_PATTERN_TYPE_NONE = 0, SOURCE_BACKGROUND_PATTERN_TYPE_GRID = 1}
		SourceBracketMatchType :: enum u32 {SOURCE_BRACKET_MATCH_NONE = 0, SOURCE_BRACKET_MATCH_OUT_OF_RANGE = 1, SOURCE_BRACKET_MATCH_NOT_FOUND = 2, SOURCE_BRACKET_MATCH_FOUND = 3}
		SourceBuffer :: struct {parent_instance: gtk.TextBuffer}
		SourceBufferClass :: struct {parent_class: gtk.TextBufferClass, bracket_matched: bracket_matched_func_ptr_anon_0, _reserved: [20]glib.pointer}
		SourceChangeCaseType :: enum u32 {SOURCE_CHANGE_CASE_LOWER = 0, SOURCE_CHANGE_CASE_UPPER = 1, SOURCE_CHANGE_CASE_TOGGLE = 2, SOURCE_CHANGE_CASE_TITLE = 3}
		SourceCompletion :: struct #packed {}
		SourceCompletionActivation :: enum u32 {SOURCE_COMPLETION_ACTIVATION_NONE = 0, SOURCE_COMPLETION_ACTIVATION_INTERACTIVE = 1, SOURCE_COMPLETION_ACTIVATION_USER_REQUESTED = 2}
		SourceCompletionCell :: struct #packed {}
		SourceCompletionCellClass :: struct {parent_class: gtk.WidgetClass}
		SourceCompletionClass :: struct {parent_class: gobj.ObjectClass}
		SourceCompletionColumn :: enum u32 {SOURCE_COMPLETION_COLUMN_ICON = 0, SOURCE_COMPLETION_COLUMN_BEFORE = 1, SOURCE_COMPLETION_COLUMN_TYPED_TEXT = 2, SOURCE_COMPLETION_COLUMN_AFTER = 3, SOURCE_COMPLETION_COLUMN_COMMENT = 4, SOURCE_COMPLETION_COLUMN_DETAILS = 5}
		SourceCompletionContext :: struct #packed {}
		SourceCompletionContextClass :: struct {parent_class: gobj.ObjectClass}
		SourceCompletionProposal :: struct #packed {}
		SourceCompletionProposalInterface :: struct {parent_iface: gobj.TypeInterface, get_typed_text: et_typed_text_func_ptr_anon_1}
		SourceCompletionProvider :: struct #packed {}
		SourceCompletionProviderInterface :: struct {parent_iface: gobj.TypeInterface, get_title: et_title_func_ptr_anon_2, get_priority: et_priority_func_ptr_anon_3, is_trigger: is_trigger_func_ptr_anon_4, key_activates: key_activates_func_ptr_anon_5, populate: populate_func_ptr_anon_6, populate_async: populate_async_func_ptr_anon_7, populate_finish: populate_finish_func_ptr_anon_8, refilter: refilter_func_ptr_anon_9, display: display_func_ptr_anon_10, activate: activate_func_ptr_anon_11, list_alternates: list_alternates_func_ptr_anon_12}
		SourceCompletionSnippets :: struct {parent_instance: gobj.Object}
		SourceCompletionSnippetsClass :: struct {parent_class: gobj.ObjectClass, _reserved: [10]glib.pointer}
		SourceCompletionWords :: struct {parent_instance: gobj.Object}
		SourceCompletionWordsClass :: struct {parent_class: gobj.ObjectClass, _reserved: [10]glib.pointer}
		SourceCompressionType :: enum u32 {SOURCE_COMPRESSION_TYPE_NONE = 0, SOURCE_COMPRESSION_TYPE_GZIP = 1}
		SourceEncoding :: struct #packed {}
		SourceFile :: struct {parent_instance: gobj.Object}
		SourceFileClass :: struct {parent_class: gobj.ObjectClass, _reserved: [10]glib.pointer}
		SourceFileLoader :: struct #packed {}
		SourceFileLoaderClass :: struct {parent_class: gobj.ObjectClass}
		SourceFileLoaderError :: enum u32 {SOURCE_FILE_LOADER_ERROR_TOO_BIG = 0, SOURCE_FILE_LOADER_ERROR_ENCODING_AUTO_DETECTION_FAILED = 1, SOURCE_FILE_LOADER_ERROR_CONVERSION_FALLBACK = 2}
		SourceFileSaver :: struct #packed {}
		SourceFileSaverClass :: struct {parent_class: gobj.ObjectClass}
		SourceFileSaverError :: enum u32 {SOURCE_FILE_SAVER_ERROR_INVALID_CHARS = 0, SOURCE_FILE_SAVER_ERROR_EXTERNALLY_MODIFIED = 1}
		SourceFileSaverFlags :: bit_set[SourceFileSaverFlagsBit]
		SourceFileSaverFlagsBit :: enum u32 {SOURCE_FILE_SAVER_FLAGS_IGNORE_INVALID_CHARS = 0, SOURCE_FILE_SAVER_FLAGS_IGNORE_MODIFICATION_TIME = 1, SOURCE_FILE_SAVER_FLAGS_CREATE_BACKUP = 2}
		SourceGutter :: struct #packed {}
		SourceGutterClass :: struct {parent_class: gtk.WidgetClass}
		SourceGutterLines :: struct #packed {}
		SourceGutterLinesClass :: struct {parent_class: gobj.ObjectClass}
		SourceGutterRenderer :: struct {parent_instance: gtk.Widget}
		SourceGutterRendererAlignmentMode :: enum u32 {SOURCE_GUTTER_RENDERER_ALIGNMENT_MODE_CELL = 0, SOURCE_GUTTER_RENDERER_ALIGNMENT_MODE_FIRST = 1, SOURCE_GUTTER_RENDERER_ALIGNMENT_MODE_LAST = 2}
		SourceGutterRendererClass :: struct {parent_class: gtk.WidgetClass, query_data: query_data_func_ptr_anon_13, begin: begin_func_ptr_anon_14, snapshot_line: snapshot_line_func_ptr_anon_15, end: end_func_ptr_anon_16, change_view: change_view_func_ptr_anon_17, change_buffer: change_buffer_func_ptr_anon_18, query_activatable: query_activatable_func_ptr_anon_19, activate: activate_func_ptr_anon_20, _reserved: [20]glib.pointer}
		SourceGutterRendererPixbuf :: struct {parent_instance: SourceGutterRenderer}
		SourceGutterRendererPixbufClass :: struct {parent_class: SourceGutterRendererClass, _reserved: [10]glib.pointer}
		SourceGutterRendererText :: struct {parent_instance: SourceGutterRenderer}
		SourceGutterRendererTextClass :: struct {parent_class: SourceGutterRendererClass, _reserved: [10]glib.pointer}
		SourceHover :: struct #packed {}
		SourceHoverClass :: struct {parent_class: gobj.ObjectClass}
		SourceHoverContext :: struct #packed {}
		SourceHoverContextClass :: struct {parent_class: gobj.ObjectClass}
		SourceHoverDisplay :: struct #packed {}
		SourceHoverDisplayClass :: struct {parent_class: gtk.WidgetClass}
		SourceHoverProvider :: struct #packed {}
		SourceHoverProviderInterface :: struct {parent_iface: gobj.TypeInterface, populate: populate_func_ptr_anon_21, populate_async: populate_async_func_ptr_anon_22, populate_finish: populate_finish_func_ptr_anon_23}
		SourceIndenter :: struct #packed {}
		SourceIndenterInterface :: struct {parent_iface: gobj.TypeInterface, is_trigger: is_trigger_func_ptr_anon_24, indent: indent_func_ptr_anon_25}
		SourceLanguage :: struct #packed {}
		SourceLanguageClass :: struct {parent_class: gobj.ObjectClass}
		SourceLanguageManager :: struct #packed {}
		SourceLanguageManagerClass :: struct {parent_class: gobj.ObjectClass}
		SourceMap :: struct {parent_instance: SourceView}
		SourceMapClass :: struct {parent_class: SourceViewClass, _reserved: [10]glib.pointer}
		SourceMark :: struct {parent_instance: gtk.TextMark}
		SourceMarkAttributes :: struct #packed {}
		SourceMarkAttributesClass :: struct {parent_class: gobj.ObjectClass}
		SourceMarkClass :: struct {parent_class: gtk.TextMarkClass, _reserved: [10]glib.pointer}
		SourceMountOperationFactory :: #type proc(file: ^SourceFile, userdata: glib.pointer) -> ^gio.MountOperation
		SourceNewlineType :: enum u32 {SOURCE_NEWLINE_TYPE_LF = 0, SOURCE_NEWLINE_TYPE_CR = 1, SOURCE_NEWLINE_TYPE_CR_LF = 2}
		SourcePrintCompositor :: struct {parent_instance: gobj.Object}
		SourcePrintCompositorClass :: struct {parent_class: gobj.ObjectClass, _reserved: [10]glib.pointer}
		SourceRegion :: struct {parent_instance: gobj.Object}
		SourceRegionClass :: struct {parent_class: gobj.ObjectClass, _reserved: [10]glib.pointer}
		SourceRegionIter :: struct {dummy1: glib.pointer, dummy2: glib.uint32, dummy3: glib.pointer}
		SourceSchedulerCallback :: #type proc(deadline: glib.int64, user_data: glib.pointer) -> glib.boolean
		SourceSearchContext :: struct #packed {}
		SourceSearchContextClass :: struct {parent_class: gobj.ObjectClass}
		SourceSearchSettings :: struct {parent_instance: gobj.Object}
		SourceSearchSettingsClass :: struct {parent_class: gobj.ObjectClass, _reserved: [10]glib.pointer}
		SourceSmartHomeEndType :: enum u32 {SOURCE_SMART_HOME_END_DISABLED = 0, SOURCE_SMART_HOME_END_BEFORE = 1, SOURCE_SMART_HOME_END_AFTER = 2, SOURCE_SMART_HOME_END_ALWAYS = 3}
		SourceSnippet :: struct #packed {}
		SourceSnippetChunk :: struct #packed {}
		SourceSnippetChunkClass :: struct {parent_class: gobj.InitiallyUnownedClass}
		SourceSnippetClass :: struct {parent_class: gobj.ObjectClass}
		SourceSnippetContext :: struct #packed {}
		SourceSnippetContextClass :: struct {parent_class: gobj.ObjectClass}
		SourceSnippetManager :: struct #packed {}
		SourceSnippetManagerClass :: struct {parent_class: gobj.ObjectClass}
		SourceSortFlags :: bit_set[SourceSortFlagsBit]
		SourceSortFlagsBit :: enum u32 {SOURCE_SORT_FLAGS_CASE_SENSITIVE = 0, SOURCE_SORT_FLAGS_REVERSE_ORDER = 1, SOURCE_SORT_FLAGS_REMOVE_DUPLICATES = 2}
		SourceSpaceDrawer :: struct #packed {}
		SourceSpaceDrawerClass :: struct {parent_class: gobj.ObjectClass}
		SourceSpaceLocationFlags :: bit_set[SourceSpaceLocationFlagsBit]
		SourceSpaceLocationFlagsBit :: enum u32 {SOURCE_SPACE_LOCATION_LEADING = 0, SOURCE_SPACE_LOCATION_INSIDE_TEXT = 1, SOURCE_SPACE_LOCATION_TRAILING = 2}
		SourceSpaceTypeFlags :: bit_set[SourceSpaceTypeFlagsBit]
		SourceSpaceTypeFlagsBit :: enum u32 {SOURCE_SPACE_TYPE_SPACE = 0, SOURCE_SPACE_TYPE_TAB = 1, SOURCE_SPACE_TYPE_NEWLINE = 2, SOURCE_SPACE_TYPE_NBSP = 3}
		SourceStyle :: struct #packed {}
		SourceStyleClass :: struct {parent_class: gobj.ObjectClass}
		SourceStyleScheme :: struct #packed {}
		SourceStyleSchemeChooser :: struct #packed {}
		SourceStyleSchemeChooserButton :: struct {parent_instance: gtk.Button}
		SourceStyleSchemeChooserButtonClass :: struct {parent: gtk.ButtonClass, _reserved: [10]glib.pointer}
		SourceStyleSchemeChooserInterface :: struct {base_interface: gobj.TypeInterface, get_style_scheme: et_style_scheme_func_ptr_anon_31, set_style_scheme: set_style_scheme_func_ptr_anon_32, _reserved: [12]glib.pointer}
		SourceStyleSchemeChooserWidget :: struct {parent_instance: gtk.Widget}
		SourceStyleSchemeChooserWidgetClass :: struct {parent: gtk.WidgetClass, _reserved: [10]glib.pointer}
		SourceStyleSchemeClass :: struct {parent_class: gobj.ObjectClass}
		SourceStyleSchemeManager :: struct #packed {}
		SourceStyleSchemeManagerClass :: struct {parent_class: gobj.ObjectClass}
		SourceStyleSchemePreview :: struct #packed {}
		SourceStyleSchemePreviewClass :: struct {parent_class: gtk.WidgetClass}
		SourceTag :: struct {parent_instance: gtk.TextTag}
		SourceTagClass :: struct {parent_class: gtk.TextTagClass, _reserved: [10]glib.pointer}
		SourceView :: struct {parent_instance: gtk.TextView}
		SourceViewClass :: struct {parent_class: gtk.TextViewClass, line_mark_activated: line_mark_activated_func_ptr_anon_26, show_completion: show_completion_func_ptr_anon_27, move_lines: move_lines_func_ptr_anon_28, move_words: move_words_func_ptr_anon_29, push_snippet: push_snippet_func_ptr_anon_30, _reserved: [20]glib.pointer}
		SourceViewGutterPosition :: enum i32 {SOURCE_VIEW_GUTTER_POSITION_LINES = -30, SOURCE_VIEW_GUTTER_POSITION_MARKS = -20}
		SourceVimIMContext :: struct #packed {}
		SourceVimIMContextClass :: struct {parent_class: gtk.IMContextClass}
		activate_func_ptr_anon_11 :: #type proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal)
		activate_func_ptr_anon_20 :: #type proc(renderer: ^SourceGutterRenderer, iter: ^gtk.TextIter, area: ^gtk.Rectangle, button: glib.uint_, state: gtk.ModifierType, n_presses: glib.int_)
		begin_func_ptr_anon_14 :: #type proc(renderer: ^SourceGutterRenderer, lines: ^SourceGutterLines)
		bracket_matched_func_ptr_anon_0 :: #type proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, state: SourceBracketMatchType)
		change_buffer_func_ptr_anon_18 :: #type proc(renderer: ^SourceGutterRenderer, old_buffer: ^SourceBuffer)
		change_view_func_ptr_anon_17 :: #type proc(renderer: ^SourceGutterRenderer, old_view: ^SourceView)
		display_func_ptr_anon_10 :: #type proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal, cell: ^SourceCompletionCell)
		end_func_ptr_anon_16 :: #type proc(renderer: ^SourceGutterRenderer)
		et_priority_func_ptr_anon_3 :: #type proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext) -> i32
		et_style_scheme_func_ptr_anon_31 :: #type proc(chooser: ^SourceStyleSchemeChooser) -> ^SourceStyleScheme
		et_title_func_ptr_anon_2 :: #type proc(self: ^SourceCompletionProvider) -> cstring
		et_typed_text_func_ptr_anon_1 :: #type proc(proposal: ^SourceCompletionProposal) -> cstring
		indent_func_ptr_anon_25 :: #type proc(self: ^SourceIndenter, view: ^SourceView, iter: ^gtk.TextIter)
		is_trigger_func_ptr_anon_24 :: #type proc(self: ^SourceIndenter, view: ^SourceView, location: ^gtk.TextIter, state: gtk.ModifierType, keyval: glib.uint_) -> glib.boolean
		is_trigger_func_ptr_anon_4 :: #type proc(self: ^SourceCompletionProvider, iter: ^gtk.TextIter, ch: glib.unichar) -> glib.boolean
		key_activates_func_ptr_anon_5 :: #type proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal, keyval: glib.uint_, state: gtk.ModifierType) -> glib.boolean
		line_mark_activated_func_ptr_anon_26 :: #type proc(view: ^SourceView, iter: ^gtk.TextIter, button: glib.uint_, state: gtk.ModifierType, n_presses: glib.int_)
		list_alternates_func_ptr_anon_12 :: #type proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal) -> ^glib.PtrArray
		move_lines_func_ptr_anon_28 :: #type proc(view: ^SourceView, down: glib.boolean)
		move_words_func_ptr_anon_29 :: #type proc(view: ^SourceView, step: glib.int_)
		populate_async_func_ptr_anon_22 :: #type proc(self: ^SourceHoverProvider, context_p: ^SourceHoverContext, display: ^SourceHoverDisplay, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer)
		populate_async_func_ptr_anon_7 :: #type proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer)
		populate_finish_func_ptr_anon_23 :: #type proc(self: ^SourceHoverProvider, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean
		populate_finish_func_ptr_anon_8 :: #type proc(self: ^SourceCompletionProvider, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.ListModel
		populate_func_ptr_anon_21 :: #type proc(self: ^SourceHoverProvider, context_p: ^SourceHoverContext, display: ^SourceHoverDisplay, error: ^^glib.Error) -> glib.boolean
		populate_func_ptr_anon_6 :: #type proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, error: ^^glib.Error) -> ^gio.ListModel
		push_snippet_func_ptr_anon_30 :: #type proc(view: ^SourceView, snippet: ^SourceSnippet, location: ^gtk.TextIter)
		query_activatable_func_ptr_anon_19 :: #type proc(renderer: ^SourceGutterRenderer, iter: ^gtk.TextIter, area: ^gtk.Rectangle) -> glib.boolean
		query_data_func_ptr_anon_13 :: #type proc(renderer: ^SourceGutterRenderer, lines: ^SourceGutterLines, line: glib.uint_)
		refilter_func_ptr_anon_9 :: #type proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, model: ^gio.ListModel)
		set_style_scheme_func_ptr_anon_32 :: #type proc(chooser: ^SourceStyleSchemeChooser, scheme: ^SourceStyleScheme)
		show_completion_func_ptr_anon_27 :: #type proc(view: ^SourceView)
		snapshot_line_func_ptr_anon_15 :: #type proc(renderer: ^SourceGutterRenderer, snapshot: ^gtk.Snapshot, lines: ^SourceGutterLines, line: glib.uint_)

	files:
		gtksourceview.odin
		patched.odin
```
