package gtksourceview

import gio "glib:gio"
import glib "glib:glib"
import gobj "glib:gobject"
import gtk "gtk4:gtk4"
import pango "pango:pango"
import pixbuf "pixbuf:gdkpixbuf"

SOURCE_MAJOR_VERSION :: (5)
SOURCE_MINOR_VERSION :: (12)
SOURCE_MICRO_VERSION :: (0)
SOURCE_VERSION_5_0 :: (((5) << 16 | (0) << 8))
SOURCE_VERSION_5_2 :: (((5) << 16 | (2) << 8))
SOURCE_VERSION_5_4 :: (((5) << 16 | (4) << 8))
SOURCE_VERSION_5_6 :: (((5) << 16 | (6) << 8))
SOURCE_VERSION_5_8 :: (((5) << 16 | (8) << 8))
SOURCE_VERSION_5_10 :: (((5) << 16 | (10) << 8))
SOURCE_VERSION_5_12 :: (((5) << 16 | (12) << 8))
SOURCE_VERSION_CUR_STABLE :: ((((5)) << 16 | ((12)) << 8))
SOURCE_VERSION_PREV_STABLE :: ((((5)) << 16 | ((12) - 2) << 8))
SOURCE_VERSION_MIN_REQUIRED :: (((((5)) << 16 | ((12)) << 8)))
SOURCE_VERSION_MAX_ALLOWED :: (((((5)) << 16 | ((12)) << 8)))
SOURCE_TYPE_BUFFER :: source_buffer_get_type
SOURCE_TYPE_COMPLETION :: source_completion_get_type
SOURCE_TYPE_COMPLETION_CELL :: source_completion_cell_get_type
SOURCE_TYPE_COMPLETION_CONTEXT :: source_completion_context_get_type
SOURCE_TYPE_COMPLETION_PROPOSAL :: source_completion_proposal_get_type
SOURCE_TYPE_COMPLETION_PROVIDER :: source_completion_provider_get_type
SOURCE_TYPE_ENCODING :: source_encoding_get_type
SOURCE_TYPE_FILE :: source_file_get_type
SOURCE_NEWLINE_TYPE_DEFAULT :: SourceNewlineType.SOURCE_NEWLINE_TYPE_LF
SOURCE_TYPE_FILE_LOADER :: source_file_loader_get_type
SOURCE_FILE_LOADER_ERROR :: source_file_loader_error_quark
SOURCE_TYPE_FILE_SAVER :: source_file_saver_get_type
SOURCE_FILE_SAVER_ERROR :: source_file_saver_error_quark
SOURCE_TYPE_GUTTER :: source_gutter_get_type
SOURCE_TYPE_GUTTER_RENDERER :: source_gutter_renderer_get_type
SOURCE_TYPE_GUTTER_RENDERER_TEXT :: source_gutter_renderer_text_get_type
SOURCE_TYPE_GUTTER_RENDERER_PIXBUF :: source_gutter_renderer_pixbuf_get_type
SOURCE_TYPE_HOVER :: source_hover_get_type
SOURCE_TYPE_HOVER_CONTEXT :: source_hover_context_get_type
SOURCE_TYPE_HOVER_DISPLAY :: source_hover_display_get_type
SOURCE_TYPE_HOVER_PROVIDER :: source_hover_provider_get_type
SOURCE_TYPE_INDENTER :: source_indenter_get_type
SOURCE_TYPE_LANGUAGE :: source_language_get_type
SOURCE_TYPE_LANGUAGE_MANAGER :: source_language_manager_get_type
SOURCE_TYPE_GUTTER_LINES :: source_gutter_lines_get_type
SOURCE_TYPE_VIEW :: source_view_get_type
SOURCE_TYPE_MAP :: source_map_get_type
SOURCE_TYPE_MARK :: source_mark_get_type
SOURCE_TYPE_MARK_ATTRIBUTES :: source_mark_attributes_get_type
SOURCE_TYPE_PRINT_COMPOSITOR :: source_print_compositor_get_type
SOURCE_TYPE_REGION :: source_region_get_type
SOURCE_TYPE_SEARCH_CONTEXT :: source_search_context_get_type
SOURCE_TYPE_SEARCH_SETTINGS :: source_search_settings_get_type
SOURCE_TYPE_SNIPPET :: source_snippet_get_type
SOURCE_TYPE_SNIPPET_CHUNK :: source_snippet_chunk_get_type
SOURCE_TYPE_SNIPPET_CONTEXT :: source_snippet_context_get_type
SOURCE_TYPE_SNIPPET_MANAGER :: source_snippet_manager_get_type
SOURCE_TYPE_SPACE_DRAWER :: source_space_drawer_get_type
SOURCE_TYPE_STYLE :: source_style_get_type
SOURCE_TYPE_STYLE_SCHEME :: source_style_scheme_get_type
SOURCE_TYPE_STYLE_SCHEME_CHOOSER :: source_style_scheme_chooser_get_type
SOURCE_TYPE_STYLE_SCHEME_CHOOSER_BUTTON :: source_style_scheme_chooser_button_get_type
SOURCE_TYPE_STYLE_SCHEME_CHOOSER_WIDGET :: source_style_scheme_chooser_widget_get_type
SOURCE_TYPE_STYLE_SCHEME_MANAGER :: source_style_scheme_manager_get_type
SOURCE_TYPE_STYLE_SCHEME_PREVIEW :: source_style_scheme_preview_get_type
SOURCE_TYPE_TAG :: source_tag_get_type
SOURCE_TYPE_VIM_IM_CONTEXT :: source_vim_im_context_get_type
SOURCE_TYPE_BRACKET_MATCH_TYPE :: source_bracket_match_type_get_type
SOURCE_TYPE_CHANGE_CASE_TYPE :: source_change_case_type_get_type
SOURCE_TYPE_SORT_FLAGS :: source_sort_flags_get_type
SOURCE_TYPE_COMPLETION_COLUMN :: source_completion_column_get_type
SOURCE_TYPE_COMPLETION_ACTIVATION :: source_completion_activation_get_type
SOURCE_TYPE_NEWLINE_TYPE :: source_newline_type_get_type
SOURCE_TYPE_COMPRESSION_TYPE :: source_compression_type_get_type
SOURCE_TYPE_FILE_LOADER_ERROR :: source_file_loader_error_get_type
SOURCE_TYPE_FILE_SAVER_ERROR :: source_file_saver_error_get_type
SOURCE_TYPE_FILE_SAVER_FLAGS :: source_file_saver_flags_get_type
SOURCE_TYPE_GUTTER_RENDERER_ALIGNMENT_MODE :: source_gutter_renderer_alignment_mode_get_type
SOURCE_TYPE_SPACE_TYPE_FLAGS :: source_space_type_flags_get_type
SOURCE_TYPE_SPACE_LOCATION_FLAGS :: source_space_location_flags_get_type
SOURCE_TYPE_VIEW_GUTTER_POSITION :: source_view_gutter_position_get_type
SOURCE_TYPE_SMART_HOME_END_TYPE :: source_smart_home_end_type_get_type
SOURCE_TYPE_BACKGROUND_PATTERN_TYPE :: source_background_pattern_type_get_type
SOURCE_TYPE_COMPLETION_WORDS :: source_completion_words_get_type
SOURCE_TYPE_COMPLETION_SNIPPETS :: source_completion_snippets_get_type

SourceBuffer :: struct {
    parent_instance: gtk.TextBuffer,
}
SourceCompletion :: struct #packed {}
SourceCompletionCell :: struct #packed {}
SourceCompletionContext :: struct #packed {}
SourceCompletionProposal :: struct #packed {}
SourceCompletionProvider :: struct #packed {}
SourceEncoding :: struct #packed {}
SourceFile :: struct {
    parent_instance: gobj.Object,
}
SourceFileLoader :: struct #packed {}
SourceFileSaver :: struct #packed {}
SourceGutter :: struct #packed {}
SourceGutterLines :: struct #packed {}
SourceGutterRenderer :: struct {
    parent_instance: gtk.Widget,
}
SourceGutterRendererPixbuf :: struct {
    parent_instance: SourceGutterRenderer,
}
SourceGutterRendererText :: struct {
    parent_instance: SourceGutterRenderer,
}
SourceHover :: struct #packed {}
SourceHoverContext :: struct #packed {}
SourceHoverDisplay :: struct #packed {}
SourceHoverProvider :: struct #packed {}
SourceVimIMContext :: struct #packed {}
SourceIndenter :: struct #packed {}
SourceLanguage :: struct #packed {}
SourceLanguageManager :: struct #packed {}
SourceView :: struct {
    parent_instance: gtk.TextView,
}
SourceMap :: struct {
    parent_instance: SourceView,
}
SourceMarkAttributes :: struct #packed {}
SourceMark :: struct {
    parent_instance: gtk.TextMark,
}
SourcePrintCompositor :: struct {
    parent_instance: gobj.Object,
}
SourceSearchContext :: struct #packed {}
SourceSearchSettings :: struct {
    parent_instance: gobj.Object,
}
SourceSnippet :: struct #packed {}
SourceSnippetChunk :: struct #packed {}
SourceSnippetContext :: struct #packed {}
SourceSnippetManager :: struct #packed {}
SourceSpaceDrawer :: struct #packed {}
SourceStyle :: struct #packed {}
SourceStyleSchemeChooserButton :: struct {
    parent_instance: gtk.Button,
}
SourceStyleSchemeChooser :: struct #packed {}
SourceStyleSchemeChooserWidget :: struct {
    parent_instance: gtk.Widget,
}
SourceStyleScheme :: struct #packed {}
SourceStyleSchemeManager :: struct #packed {}
SourceStyleSchemePreview :: struct #packed {}
SourceBracketMatchType :: enum u32 {SOURCE_BRACKET_MATCH_NONE = 0, SOURCE_BRACKET_MATCH_OUT_OF_RANGE = 1, SOURCE_BRACKET_MATCH_NOT_FOUND = 2, SOURCE_BRACKET_MATCH_FOUND = 3 }
bracket_matched_func_ptr_anon_0 :: #type proc "c" (buffer: ^SourceBuffer, iter: ^gtk.TextIter, state: SourceBracketMatchType)
SourceBufferClass :: struct {
    parent_class: gtk.TextBufferClass,
    bracket_matched: bracket_matched_func_ptr_anon_0,
    _reserved: [20]glib.pointer,
}
SourceChangeCaseType :: enum u32 {SOURCE_CHANGE_CASE_LOWER = 0, SOURCE_CHANGE_CASE_UPPER = 1, SOURCE_CHANGE_CASE_TOGGLE = 2, SOURCE_CHANGE_CASE_TITLE = 3 }
SourceSortFlagsBit :: enum u32 {SOURCE_SORT_FLAGS_CASE_SENSITIVE = 0, SOURCE_SORT_FLAGS_REVERSE_ORDER = 1, SOURCE_SORT_FLAGS_REMOVE_DUPLICATES = 2}
SourceSortFlags :: bit_set[SourceSortFlagsBit; u32]
SOURCE_SORT_FLAGS_NONE :: SourceSortFlags{}
SourceCompletionClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceCompletionColumn :: enum u32 {SOURCE_COMPLETION_COLUMN_ICON = 0, SOURCE_COMPLETION_COLUMN_BEFORE = 1, SOURCE_COMPLETION_COLUMN_TYPED_TEXT = 2, SOURCE_COMPLETION_COLUMN_AFTER = 3, SOURCE_COMPLETION_COLUMN_COMMENT = 4, SOURCE_COMPLETION_COLUMN_DETAILS = 5 }
SourceCompletionCellClass :: struct {
    parent_class: gtk.WidgetClass,
}
SourceCompletionActivation :: enum u32 {SOURCE_COMPLETION_ACTIVATION_NONE = 0, SOURCE_COMPLETION_ACTIVATION_INTERACTIVE = 1, SOURCE_COMPLETION_ACTIVATION_USER_REQUESTED = 2 }
SourceCompletionContextClass :: struct {
    parent_class: gobj.ObjectClass,
}
et_typed_text_func_ptr_anon_1 :: #type proc "c" (proposal: ^SourceCompletionProposal) -> cstring
SourceCompletionProposalInterface :: struct {
    parent_iface: gobj.TypeInterface,
    get_typed_text: et_typed_text_func_ptr_anon_1,
}
et_title_func_ptr_anon_2 :: #type proc "c" (self: ^SourceCompletionProvider) -> cstring
et_priority_func_ptr_anon_3 :: #type proc "c" (self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext) -> i32
is_trigger_func_ptr_anon_4 :: #type proc "c" (self: ^SourceCompletionProvider, iter: ^gtk.TextIter, ch: glib.unichar) -> glib.boolean
key_activates_func_ptr_anon_5 :: #type proc "c" (self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal, keyval: glib.uint_, state: gtk.ModifierType) -> glib.boolean
populate_func_ptr_anon_6 :: #type proc "c" (self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, error: ^^glib.Error) -> ^gio.ListModel
populate_async_func_ptr_anon_7 :: #type proc "c" (self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer)
populate_finish_func_ptr_anon_8 :: #type proc "c" (self: ^SourceCompletionProvider, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.ListModel
refilter_func_ptr_anon_9 :: #type proc "c" (self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, model: ^gio.ListModel)
display_func_ptr_anon_10 :: #type proc "c" (self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal, cell: ^SourceCompletionCell)
activate_func_ptr_anon_11 :: #type proc "c" (self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal)
list_alternates_func_ptr_anon_12 :: #type proc "c" (self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal) -> ^glib.PtrArray
SourceCompletionProviderInterface :: struct {
    parent_iface: gobj.TypeInterface,
    get_title: et_title_func_ptr_anon_2,
    get_priority: et_priority_func_ptr_anon_3,
    is_trigger: is_trigger_func_ptr_anon_4,
    key_activates: key_activates_func_ptr_anon_5,
    populate: populate_func_ptr_anon_6,
    populate_async: populate_async_func_ptr_anon_7,
    populate_finish: populate_finish_func_ptr_anon_8,
    refilter: refilter_func_ptr_anon_9,
    display: display_func_ptr_anon_10,
    activate: activate_func_ptr_anon_11,
    list_alternates: list_alternates_func_ptr_anon_12,
}
SourceNewlineType :: enum u32 {SOURCE_NEWLINE_TYPE_LF = 0, SOURCE_NEWLINE_TYPE_CR = 1, SOURCE_NEWLINE_TYPE_CR_LF = 2 }
SourceCompressionType :: enum u32 {SOURCE_COMPRESSION_TYPE_NONE = 0, SOURCE_COMPRESSION_TYPE_GZIP = 1 }
SourceMountOperationFactory :: #type proc "c" (file: ^SourceFile, userdata: glib.pointer) -> ^gio.MountOperation
SourceFileClass :: struct {
    parent_class: gobj.ObjectClass,
    _reserved: [10]glib.pointer,
}
SourceFileLoaderError :: enum u32 {SOURCE_FILE_LOADER_ERROR_TOO_BIG = 0, SOURCE_FILE_LOADER_ERROR_ENCODING_AUTO_DETECTION_FAILED = 1, SOURCE_FILE_LOADER_ERROR_CONVERSION_FALLBACK = 2 }
SourceFileLoaderClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceFileSaverError :: enum u32 {SOURCE_FILE_SAVER_ERROR_INVALID_CHARS = 0, SOURCE_FILE_SAVER_ERROR_EXTERNALLY_MODIFIED = 1 }
SourceFileSaverFlagsBit :: enum u32 {SOURCE_FILE_SAVER_FLAGS_IGNORE_INVALID_CHARS = 0, SOURCE_FILE_SAVER_FLAGS_IGNORE_MODIFICATION_TIME = 1, SOURCE_FILE_SAVER_FLAGS_CREATE_BACKUP = 2}
SourceFileSaverFlags :: bit_set[SourceFileSaverFlagsBit; u32]
SOURCE_FILE_SAVER_FLAGS_NONE :: SourceFileSaverFlags{}
SourceFileSaverClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceGutterClass :: struct {
    parent_class: gtk.WidgetClass,
}
SourceGutterRendererAlignmentMode :: enum u32 {SOURCE_GUTTER_RENDERER_ALIGNMENT_MODE_CELL = 0, SOURCE_GUTTER_RENDERER_ALIGNMENT_MODE_FIRST = 1, SOURCE_GUTTER_RENDERER_ALIGNMENT_MODE_LAST = 2 }
query_data_func_ptr_anon_13 :: #type proc "c" (renderer: ^SourceGutterRenderer, lines: ^SourceGutterLines, line: glib.uint_)
begin_func_ptr_anon_14 :: #type proc "c" (renderer: ^SourceGutterRenderer, lines: ^SourceGutterLines)
snapshot_line_func_ptr_anon_15 :: #type proc "c" (renderer: ^SourceGutterRenderer, snapshot: ^gtk.Snapshot, lines: ^SourceGutterLines, line: glib.uint_)
end_func_ptr_anon_16 :: #type proc "c" (renderer: ^SourceGutterRenderer)
change_view_func_ptr_anon_17 :: #type proc "c" (renderer: ^SourceGutterRenderer, old_view: ^SourceView)
change_buffer_func_ptr_anon_18 :: #type proc "c" (renderer: ^SourceGutterRenderer, old_buffer: ^SourceBuffer)
query_activatable_func_ptr_anon_19 :: #type proc "c" (renderer: ^SourceGutterRenderer, iter: ^gtk.TextIter, area: ^gtk.Rectangle) -> glib.boolean
activate_func_ptr_anon_20 :: #type proc "c" (renderer: ^SourceGutterRenderer, iter: ^gtk.TextIter, area: ^gtk.Rectangle, button: glib.uint_, state: gtk.ModifierType, n_presses: glib.int_)
SourceGutterRendererClass :: struct {
    parent_class: gtk.WidgetClass,
    query_data: query_data_func_ptr_anon_13,
    begin: begin_func_ptr_anon_14,
    snapshot_line: snapshot_line_func_ptr_anon_15,
    end: end_func_ptr_anon_16,
    change_view: change_view_func_ptr_anon_17,
    change_buffer: change_buffer_func_ptr_anon_18,
    query_activatable: query_activatable_func_ptr_anon_19,
    activate: activate_func_ptr_anon_20,
    _reserved: [20]glib.pointer,
}
SourceGutterRendererTextClass :: struct {
    parent_class: SourceGutterRendererClass,
    _reserved: [10]glib.pointer,
}
SourceGutterRendererPixbufClass :: struct {
    parent_class: SourceGutterRendererClass,
    _reserved: [10]glib.pointer,
}
SourceHoverClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceHoverContextClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceHoverDisplayClass :: struct {
    parent_class: gtk.WidgetClass,
}
populate_func_ptr_anon_21 :: #type proc "c" (self: ^SourceHoverProvider, context_p: ^SourceHoverContext, display: ^SourceHoverDisplay, error: ^^glib.Error) -> glib.boolean
populate_async_func_ptr_anon_22 :: #type proc "c" (self: ^SourceHoverProvider, context_p: ^SourceHoverContext, display: ^SourceHoverDisplay, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer)
populate_finish_func_ptr_anon_23 :: #type proc "c" (self: ^SourceHoverProvider, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean
SourceHoverProviderInterface :: struct {
    parent_iface: gobj.TypeInterface,
    populate: populate_func_ptr_anon_21,
    populate_async: populate_async_func_ptr_anon_22,
    populate_finish: populate_finish_func_ptr_anon_23,
}
is_trigger_func_ptr_anon_24 :: #type proc "c" (self: ^SourceIndenter, view: ^SourceView, location: ^gtk.TextIter, state: gtk.ModifierType, keyval: glib.uint_) -> glib.boolean
indent_func_ptr_anon_25 :: #type proc "c" (self: ^SourceIndenter, view: ^SourceView, iter: ^gtk.TextIter)
SourceIndenterInterface :: struct {
    parent_iface: gobj.TypeInterface,
    is_trigger: is_trigger_func_ptr_anon_24,
    indent: indent_func_ptr_anon_25,
}
SourceLanguageClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceLanguageManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceGutterLinesClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceViewGutterPosition :: enum i32 {SOURCE_VIEW_GUTTER_POSITION_LINES = -30, SOURCE_VIEW_GUTTER_POSITION_MARKS = -20 }
SourceSmartHomeEndType :: enum u32 {SOURCE_SMART_HOME_END_DISABLED = 0, SOURCE_SMART_HOME_END_BEFORE = 1, SOURCE_SMART_HOME_END_AFTER = 2, SOURCE_SMART_HOME_END_ALWAYS = 3 }
SourceBackgroundPatternType :: enum u32 {SOURCE_BACKGROUND_PATTERN_TYPE_NONE = 0, SOURCE_BACKGROUND_PATTERN_TYPE_GRID = 1 }
line_mark_activated_func_ptr_anon_26 :: #type proc "c" (view: ^SourceView, iter: ^gtk.TextIter, button: glib.uint_, state: gtk.ModifierType, n_presses: glib.int_)
show_completion_func_ptr_anon_27 :: #type proc "c" (view: ^SourceView)
move_lines_func_ptr_anon_28 :: #type proc "c" (view: ^SourceView, down: glib.boolean)
move_words_func_ptr_anon_29 :: #type proc "c" (view: ^SourceView, step: glib.int_)
push_snippet_func_ptr_anon_30 :: #type proc "c" (view: ^SourceView, snippet: ^SourceSnippet, location: ^gtk.TextIter)
SourceViewClass :: struct {
    parent_class: gtk.TextViewClass,
    line_mark_activated: line_mark_activated_func_ptr_anon_26,
    show_completion: show_completion_func_ptr_anon_27,
    move_lines: move_lines_func_ptr_anon_28,
    move_words: move_words_func_ptr_anon_29,
    push_snippet: push_snippet_func_ptr_anon_30,
    _reserved: [20]glib.pointer,
}
SourceMapClass :: struct {
    parent_class: SourceViewClass,
    _reserved: [10]glib.pointer,
}
SourceMarkClass :: struct {
    parent_class: gtk.TextMarkClass,
    _reserved: [10]glib.pointer,
}
SourceMarkAttributesClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourcePrintCompositorClass :: struct {
    parent_class: gobj.ObjectClass,
    _reserved: [10]glib.pointer,
}
SourceRegion :: struct {
    parent_instance: gobj.Object,
}
SourceRegionClass :: struct {
    parent_class: gobj.ObjectClass,
    _reserved: [10]glib.pointer,
}
SourceRegionIter :: struct {
    dummy1: glib.pointer,
    dummy2: glib.uint32,
    dummy3: glib.pointer,
}
SourceSchedulerCallback :: #type proc "c" (deadline: glib.int64, user_data: glib.pointer) -> glib.boolean
SourceSearchContextClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceSearchSettingsClass :: struct {
    parent_class: gobj.ObjectClass,
    _reserved: [10]glib.pointer,
}
SourceSnippetClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceSnippetChunkClass :: struct {
    parent_class: gobj.InitiallyUnownedClass,
}
SourceSnippetContextClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceSnippetManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceSpaceTypeFlagsBit :: enum u32 {SOURCE_SPACE_TYPE_SPACE = 0, SOURCE_SPACE_TYPE_TAB = 1, SOURCE_SPACE_TYPE_NEWLINE = 2, SOURCE_SPACE_TYPE_NBSP = 3}
SourceSpaceTypeFlags :: bit_set[SourceSpaceTypeFlagsBit; u32]
SOURCE_SPACE_TYPE_NONE :: SourceSpaceTypeFlags{}
SOURCE_SPACE_TYPE_ALL :: SourceSpaceTypeFlags{.SOURCE_SPACE_TYPE_SPACE, .SOURCE_SPACE_TYPE_TAB, .SOURCE_SPACE_TYPE_NEWLINE, .SOURCE_SPACE_TYPE_NBSP}
SourceSpaceLocationFlagsBit :: enum u32 {SOURCE_SPACE_LOCATION_LEADING = 0, SOURCE_SPACE_LOCATION_INSIDE_TEXT = 1, SOURCE_SPACE_LOCATION_TRAILING = 2}
SourceSpaceLocationFlags :: bit_set[SourceSpaceLocationFlagsBit; u32]
SOURCE_SPACE_LOCATION_NONE :: SourceSpaceLocationFlags{}
SOURCE_SPACE_LOCATION_ALL :: SourceSpaceLocationFlags{.SOURCE_SPACE_LOCATION_LEADING, .SOURCE_SPACE_LOCATION_INSIDE_TEXT, .SOURCE_SPACE_LOCATION_TRAILING}
SourceSpaceDrawerClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceStyleClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceStyleSchemeClass :: struct {
    parent_class: gobj.ObjectClass,
}
et_style_scheme_func_ptr_anon_31 :: #type proc "c" (chooser: ^SourceStyleSchemeChooser) -> ^SourceStyleScheme
set_style_scheme_func_ptr_anon_32 :: #type proc "c" (chooser: ^SourceStyleSchemeChooser, scheme: ^SourceStyleScheme)
SourceStyleSchemeChooserInterface :: struct {
    base_interface: gobj.TypeInterface,
    get_style_scheme: et_style_scheme_func_ptr_anon_31,
    set_style_scheme: set_style_scheme_func_ptr_anon_32,
    _reserved: [12]glib.pointer,
}
SourceStyleSchemeChooserButtonClass :: struct {
    parent: gtk.ButtonClass,
    _reserved: [10]glib.pointer,
}
SourceStyleSchemeChooserWidgetClass :: struct {
    parent: gtk.WidgetClass,
    _reserved: [10]glib.pointer,
}
SourceStyleSchemeManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}
SourceStyleSchemePreviewClass :: struct {
    parent_class: gtk.WidgetClass,
}
SourceTag :: struct {
    parent_instance: gtk.TextTag,
}
SourceTagClass :: struct {
    parent_class: gtk.TextTagClass,
    _reserved: [10]glib.pointer,
}
SourceVimIMContextClass :: struct {
    parent_class: gtk.IMContextClass,
}
SourceCompletionWordsClass :: struct {
    parent_class: gobj.ObjectClass,
    _reserved: [10]glib.pointer,
}
SourceCompletionWords :: struct {
    parent_instance: gobj.Object,
}
SourceCompletionSnippets :: struct {
    parent_instance: gobj.Object,
}
SourceCompletionSnippetsClass :: struct {
    parent_class: gobj.ObjectClass,
    _reserved: [10]glib.pointer,
}

@(default_calling_convention = "c")
foreign gtksourceview_runic {
    @(link_name = "gtk_source_get_major_version")
    source_get_major_version :: proc() -> glib.uint_ ---

    @(link_name = "gtk_source_get_minor_version")
    source_get_minor_version :: proc() -> glib.uint_ ---

    @(link_name = "gtk_source_get_micro_version")
    source_get_micro_version :: proc() -> glib.uint_ ---

    @(link_name = "gtk_source_check_version")
    source_check_version :: proc(major: glib.uint_, minor: glib.uint_, micro: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_source_buffer_get_type")
    source_buffer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_buffer_new")
    source_buffer_new :: proc(table: ^gtk.TextTagTable) -> ^SourceBuffer ---

    @(link_name = "gtk_source_buffer_new_with_language")
    source_buffer_new_with_language :: proc(language: ^SourceLanguage) -> ^SourceBuffer ---

    @(link_name = "gtk_source_buffer_get_highlight_syntax")
    source_buffer_get_highlight_syntax :: proc(buffer: ^SourceBuffer) -> glib.boolean ---

    @(link_name = "gtk_source_buffer_set_highlight_syntax")
    source_buffer_set_highlight_syntax :: proc(buffer: ^SourceBuffer, highlight: glib.boolean) ---

    @(link_name = "gtk_source_buffer_get_highlight_matching_brackets")
    source_buffer_get_highlight_matching_brackets :: proc(buffer: ^SourceBuffer) -> glib.boolean ---

    @(link_name = "gtk_source_buffer_set_highlight_matching_brackets")
    source_buffer_set_highlight_matching_brackets :: proc(buffer: ^SourceBuffer, highlight: glib.boolean) ---

    @(link_name = "gtk_source_buffer_get_language")
    source_buffer_get_language :: proc(buffer: ^SourceBuffer) -> ^SourceLanguage ---

    @(link_name = "gtk_source_buffer_set_language")
    source_buffer_set_language :: proc(buffer: ^SourceBuffer, language: ^SourceLanguage) ---

    @(link_name = "gtk_source_buffer_get_loading")
    source_buffer_get_loading :: proc(buffer: ^SourceBuffer) -> glib.boolean ---

    @(link_name = "gtk_source_buffer_get_style_scheme")
    source_buffer_get_style_scheme :: proc(buffer: ^SourceBuffer) -> ^SourceStyleScheme ---

    @(link_name = "gtk_source_buffer_set_style_scheme")
    source_buffer_set_style_scheme :: proc(buffer: ^SourceBuffer, scheme: ^SourceStyleScheme) ---

    @(link_name = "gtk_source_buffer_ensure_highlight")
    source_buffer_ensure_highlight :: proc(buffer: ^SourceBuffer, start: ^gtk.TextIter, end: ^gtk.TextIter) ---

    @(link_name = "gtk_source_buffer_create_source_mark")
    source_buffer_create_source_mark :: proc(buffer: ^SourceBuffer, name: cstring, category: cstring, where_p: ^gtk.TextIter) -> ^SourceMark ---

    @(link_name = "gtk_source_buffer_forward_iter_to_source_mark")
    source_buffer_forward_iter_to_source_mark :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, category: cstring) -> glib.boolean ---

    @(link_name = "gtk_source_buffer_backward_iter_to_source_mark")
    source_buffer_backward_iter_to_source_mark :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, category: cstring) -> glib.boolean ---

    @(link_name = "gtk_source_buffer_get_source_marks_at_iter")
    source_buffer_get_source_marks_at_iter :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, category: cstring) -> ^glib.SList ---

    @(link_name = "gtk_source_buffer_get_source_marks_at_line")
    source_buffer_get_source_marks_at_line :: proc(buffer: ^SourceBuffer, line: glib.int_, category: cstring) -> ^glib.SList ---

    @(link_name = "gtk_source_buffer_remove_source_marks")
    source_buffer_remove_source_marks :: proc(buffer: ^SourceBuffer, start: ^gtk.TextIter, end: ^gtk.TextIter, category: cstring) ---

    @(link_name = "gtk_source_buffer_iter_has_context_class")
    source_buffer_iter_has_context_class :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, context_class: cstring) -> glib.boolean ---

    @(link_name = "gtk_source_buffer_get_context_classes_at_iter")
    source_buffer_get_context_classes_at_iter :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter) -> ^cstring ---

    @(link_name = "gtk_source_buffer_iter_forward_to_context_class_toggle")
    source_buffer_iter_forward_to_context_class_toggle :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, context_class: cstring) -> glib.boolean ---

    @(link_name = "gtk_source_buffer_iter_backward_to_context_class_toggle")
    source_buffer_iter_backward_to_context_class_toggle :: proc(buffer: ^SourceBuffer, iter: ^gtk.TextIter, context_class: cstring) -> glib.boolean ---

    @(link_name = "gtk_source_buffer_change_case")
    source_buffer_change_case :: proc(buffer: ^SourceBuffer, case_type: SourceChangeCaseType, start: ^gtk.TextIter, end: ^gtk.TextIter) ---

    @(link_name = "gtk_source_buffer_join_lines")
    source_buffer_join_lines :: proc(buffer: ^SourceBuffer, start: ^gtk.TextIter, end: ^gtk.TextIter) ---

    @(link_name = "gtk_source_buffer_sort_lines")
    source_buffer_sort_lines :: proc(buffer: ^SourceBuffer, start: ^gtk.TextIter, end: ^gtk.TextIter, flags: SourceSortFlags, column: glib.int_) ---

    @(link_name = "gtk_source_buffer_set_implicit_trailing_newline")
    source_buffer_set_implicit_trailing_newline :: proc(buffer: ^SourceBuffer, implicit_trailing_newline: glib.boolean) ---

    @(link_name = "gtk_source_buffer_get_implicit_trailing_newline")
    source_buffer_get_implicit_trailing_newline :: proc(buffer: ^SourceBuffer) -> glib.boolean ---

    @(link_name = "gtk_source_buffer_create_source_tag")
    source_buffer_create_source_tag :: proc(buffer: ^SourceBuffer, tag_name: cstring, first_property_name: cstring, #c_vararg var_args: ..any) -> ^gtk.TextTag ---

    @(link_name = "gtk_source_completion_get_type")
    source_completion_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_completion_get_view")
    source_completion_get_view :: proc(self: ^SourceCompletion) -> ^SourceView ---

    @(link_name = "gtk_source_completion_get_buffer")
    source_completion_get_buffer :: proc(self: ^SourceCompletion) -> ^SourceBuffer ---

    @(link_name = "gtk_source_completion_show")
    source_completion_show :: proc(self: ^SourceCompletion) ---

    @(link_name = "gtk_source_completion_hide")
    source_completion_hide :: proc(self: ^SourceCompletion) ---

    @(link_name = "gtk_source_completion_add_provider")
    source_completion_add_provider :: proc(self: ^SourceCompletion, provider: ^SourceCompletionProvider) ---

    @(link_name = "gtk_source_completion_remove_provider")
    source_completion_remove_provider :: proc(self: ^SourceCompletion, provider: ^SourceCompletionProvider) ---

    @(link_name = "gtk_source_completion_block_interactive")
    source_completion_block_interactive :: proc(self: ^SourceCompletion) ---

    @(link_name = "gtk_source_completion_unblock_interactive")
    source_completion_unblock_interactive :: proc(self: ^SourceCompletion) ---

    @(link_name = "gtk_source_completion_get_page_size")
    source_completion_get_page_size :: proc(self: ^SourceCompletion) -> glib.uint_ ---

    @(link_name = "gtk_source_completion_set_page_size")
    source_completion_set_page_size :: proc(self: ^SourceCompletion, page_size: glib.uint_) ---

    @(link_name = "gtk_source_completion_fuzzy_match")
    source_completion_fuzzy_match :: proc(haystack: cstring, casefold_needle: cstring, priority: ^glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_source_completion_fuzzy_highlight")
    source_completion_fuzzy_highlight :: proc(haystack: cstring, casefold_query: cstring) -> ^pango.AttrList ---

    @(link_name = "gtk_source_completion_cell_get_type")
    source_completion_cell_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_completion_cell_get_column")
    source_completion_cell_get_column :: proc(self: ^SourceCompletionCell) -> SourceCompletionColumn ---

    @(link_name = "gtk_source_completion_cell_get_widget")
    source_completion_cell_get_widget :: proc(self: ^SourceCompletionCell) -> ^gtk.Widget ---

    @(link_name = "gtk_source_completion_cell_set_widget")
    source_completion_cell_set_widget :: proc(self: ^SourceCompletionCell, child: ^gtk.Widget) ---

    @(link_name = "gtk_source_completion_cell_set_markup")
    source_completion_cell_set_markup :: proc(self: ^SourceCompletionCell, markup: cstring) ---

    @(link_name = "gtk_source_completion_cell_set_icon_name")
    source_completion_cell_set_icon_name :: proc(self: ^SourceCompletionCell, icon_name: cstring) ---

    @(link_name = "gtk_source_completion_cell_set_gicon")
    source_completion_cell_set_gicon :: proc(self: ^SourceCompletionCell, gicon: ^gio.Icon) ---

    @(link_name = "gtk_source_completion_cell_set_paintable")
    source_completion_cell_set_paintable :: proc(self: ^SourceCompletionCell, paintable: ^gtk.Paintable) ---

    @(link_name = "gtk_source_completion_cell_set_text")
    source_completion_cell_set_text :: proc(self: ^SourceCompletionCell, text: cstring) ---

    @(link_name = "gtk_source_completion_cell_set_text_with_attributes")
    source_completion_cell_set_text_with_attributes :: proc(self: ^SourceCompletionCell, text: cstring, attrs: ^pango.AttrList) ---

    @(link_name = "gtk_source_completion_context_get_type")
    source_completion_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_completion_context_get_completion")
    source_completion_context_get_completion :: proc(self: ^SourceCompletionContext) -> ^SourceCompletion ---

    @(link_name = "gtk_source_completion_context_get_activation")
    source_completion_context_get_activation :: proc(self: ^SourceCompletionContext) -> SourceCompletionActivation ---

    @(link_name = "gtk_source_completion_context_get_bounds")
    source_completion_context_get_bounds :: proc(self: ^SourceCompletionContext, begin: ^gtk.TextIter, end: ^gtk.TextIter) -> glib.boolean ---

    @(link_name = "gtk_source_completion_context_get_empty")
    source_completion_context_get_empty :: proc(self: ^SourceCompletionContext) -> glib.boolean ---

    @(link_name = "gtk_source_completion_context_get_word")
    source_completion_context_get_word :: proc(self: ^SourceCompletionContext) -> cstring ---

    @(link_name = "gtk_source_completion_context_get_busy")
    source_completion_context_get_busy :: proc(self: ^SourceCompletionContext) -> glib.boolean ---

    @(link_name = "gtk_source_completion_context_get_view")
    source_completion_context_get_view :: proc(self: ^SourceCompletionContext) -> ^SourceView ---

    @(link_name = "gtk_source_completion_context_get_buffer")
    source_completion_context_get_buffer :: proc(self: ^SourceCompletionContext) -> ^SourceBuffer ---

    @(link_name = "gtk_source_completion_context_get_language")
    source_completion_context_get_language :: proc(self: ^SourceCompletionContext) -> ^SourceLanguage ---

    @(link_name = "gtk_source_completion_context_set_proposals_for_provider")
    source_completion_context_set_proposals_for_provider :: proc(self: ^SourceCompletionContext, provider: ^SourceCompletionProvider, results: ^gio.ListModel) ---

    @(link_name = "gtk_source_completion_context_get_proposals_for_provider")
    source_completion_context_get_proposals_for_provider :: proc(self: ^SourceCompletionContext, provider: ^SourceCompletionProvider) -> ^gio.ListModel ---

    @(link_name = "gtk_source_completion_context_list_providers")
    source_completion_context_list_providers :: proc(self: ^SourceCompletionContext) -> ^gio.ListModel ---

    @(link_name = "gtk_source_completion_proposal_get_type")
    source_completion_proposal_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_completion_proposal_get_typed_text")
    source_completion_proposal_get_typed_text :: proc(proposal: ^SourceCompletionProposal) -> cstring ---

    @(link_name = "gtk_source_completion_provider_get_type")
    source_completion_provider_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_completion_provider_get_title")
    source_completion_provider_get_title :: proc(self: ^SourceCompletionProvider) -> cstring ---

    @(link_name = "gtk_source_completion_provider_get_priority")
    source_completion_provider_get_priority :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext) -> i32 ---

    @(link_name = "gtk_source_completion_provider_is_trigger")
    source_completion_provider_is_trigger :: proc(self: ^SourceCompletionProvider, iter: ^gtk.TextIter, ch: glib.unichar) -> glib.boolean ---

    @(link_name = "gtk_source_completion_provider_key_activates")
    source_completion_provider_key_activates :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal, keyval: glib.uint_, state: gtk.ModifierType) -> glib.boolean ---

    @(link_name = "gtk_source_completion_provider_populate_async")
    source_completion_provider_populate_async :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_source_completion_provider_populate_finish")
    source_completion_provider_populate_finish :: proc(self: ^SourceCompletionProvider, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.ListModel ---

    @(link_name = "gtk_source_completion_provider_refilter")
    source_completion_provider_refilter :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, model: ^gio.ListModel) ---

    @(link_name = "gtk_source_completion_provider_display")
    source_completion_provider_display :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal, cell: ^SourceCompletionCell) ---

    @(link_name = "gtk_source_completion_provider_activate")
    source_completion_provider_activate :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal) ---

    @(link_name = "gtk_source_completion_provider_list_alternates")
    source_completion_provider_list_alternates :: proc(self: ^SourceCompletionProvider, context_p: ^SourceCompletionContext, proposal: ^SourceCompletionProposal) -> ^glib.PtrArray ---

    @(link_name = "gtk_source_encoding_get_type")
    source_encoding_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_encoding_get_from_charset")
    source_encoding_get_from_charset :: proc(charset: cstring) -> ^SourceEncoding ---

    @(link_name = "gtk_source_encoding_to_string")
    source_encoding_to_string :: proc(enc: ^SourceEncoding) -> cstring ---

    @(link_name = "gtk_source_encoding_get_name")
    source_encoding_get_name :: proc(enc: ^SourceEncoding) -> cstring ---

    @(link_name = "gtk_source_encoding_get_charset")
    source_encoding_get_charset :: proc(enc: ^SourceEncoding) -> cstring ---

    @(link_name = "gtk_source_encoding_get_utf8")
    source_encoding_get_utf8 :: proc() -> ^SourceEncoding ---

    @(link_name = "gtk_source_encoding_get_current")
    source_encoding_get_current :: proc() -> ^SourceEncoding ---

    @(link_name = "gtk_source_encoding_get_all")
    source_encoding_get_all :: proc() -> ^glib.SList ---

    @(link_name = "gtk_source_encoding_get_default_candidates")
    source_encoding_get_default_candidates :: proc() -> ^glib.SList ---

    @(link_name = "gtk_source_encoding_copy")
    source_encoding_copy :: proc(enc: ^SourceEncoding) -> ^SourceEncoding ---

    @(link_name = "gtk_source_encoding_free")
    source_encoding_free :: proc(enc: ^SourceEncoding) ---

    @(link_name = "gtk_source_file_get_type")
    source_file_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_file_new")
    source_file_new :: proc() -> ^SourceFile ---

    @(link_name = "gtk_source_file_get_location")
    source_file_get_location :: proc(file: ^SourceFile) -> ^gio.File ---

    @(link_name = "gtk_source_file_set_location")
    source_file_set_location :: proc(file: ^SourceFile, location: ^gio.File) ---

    @(link_name = "gtk_source_file_get_encoding")
    source_file_get_encoding :: proc(file: ^SourceFile) -> ^SourceEncoding ---

    @(link_name = "gtk_source_file_get_newline_type")
    source_file_get_newline_type :: proc(file: ^SourceFile) -> SourceNewlineType ---

    @(link_name = "gtk_source_file_get_compression_type")
    source_file_get_compression_type :: proc(file: ^SourceFile) -> SourceCompressionType ---

    @(link_name = "gtk_source_file_set_mount_operation_factory")
    source_file_set_mount_operation_factory :: proc(file: ^SourceFile, callback: SourceMountOperationFactory, user_data: glib.pointer, notify: glib.DestroyNotify) ---

    @(link_name = "gtk_source_file_check_file_on_disk")
    source_file_check_file_on_disk :: proc(file: ^SourceFile) ---

    @(link_name = "gtk_source_file_is_local")
    source_file_is_local :: proc(file: ^SourceFile) -> glib.boolean ---

    @(link_name = "gtk_source_file_is_externally_modified")
    source_file_is_externally_modified :: proc(file: ^SourceFile) -> glib.boolean ---

    @(link_name = "gtk_source_file_is_deleted")
    source_file_is_deleted :: proc(file: ^SourceFile) -> glib.boolean ---

    @(link_name = "gtk_source_file_is_readonly")
    source_file_is_readonly :: proc(file: ^SourceFile) -> glib.boolean ---

    @(link_name = "gtk_source_file_loader_get_type")
    source_file_loader_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_file_loader_error_quark")
    source_file_loader_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gtk_source_file_loader_new")
    source_file_loader_new :: proc(buffer: ^SourceBuffer, file: ^SourceFile) -> ^SourceFileLoader ---

    @(link_name = "gtk_source_file_loader_new_from_stream")
    source_file_loader_new_from_stream :: proc(buffer: ^SourceBuffer, file: ^SourceFile, stream: ^gio.InputStream) -> ^SourceFileLoader ---

    @(link_name = "gtk_source_file_loader_set_candidate_encodings")
    source_file_loader_set_candidate_encodings :: proc(loader: ^SourceFileLoader, candidate_encodings: ^glib.SList) ---

    @(link_name = "gtk_source_file_loader_get_buffer")
    source_file_loader_get_buffer :: proc(loader: ^SourceFileLoader) -> ^SourceBuffer ---

    @(link_name = "gtk_source_file_loader_get_file")
    source_file_loader_get_file :: proc(loader: ^SourceFileLoader) -> ^SourceFile ---

    @(link_name = "gtk_source_file_loader_get_location")
    source_file_loader_get_location :: proc(loader: ^SourceFileLoader) -> ^gio.File ---

    @(link_name = "gtk_source_file_loader_get_input_stream")
    source_file_loader_get_input_stream :: proc(loader: ^SourceFileLoader) -> ^gio.InputStream ---

    @(link_name = "gtk_source_file_loader_load_async")
    source_file_loader_load_async :: proc(loader: ^SourceFileLoader, io_priority: glib.int_, cancellable: ^gio.Cancellable, progress_callback: gio.FileProgressCallback, progress_callback_data: glib.pointer, progress_callback_notify: glib.DestroyNotify, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_source_file_loader_load_finish")
    source_file_loader_load_finish :: proc(loader: ^SourceFileLoader, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_source_file_loader_get_encoding")
    source_file_loader_get_encoding :: proc(loader: ^SourceFileLoader) -> ^SourceEncoding ---

    @(link_name = "gtk_source_file_loader_get_newline_type")
    source_file_loader_get_newline_type :: proc(loader: ^SourceFileLoader) -> SourceNewlineType ---

    @(link_name = "gtk_source_file_loader_get_compression_type")
    source_file_loader_get_compression_type :: proc(loader: ^SourceFileLoader) -> SourceCompressionType ---

    @(link_name = "gtk_source_file_saver_get_type")
    source_file_saver_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_file_saver_error_quark")
    source_file_saver_error_quark :: proc() -> glib.Quark ---

    @(link_name = "gtk_source_file_saver_new")
    source_file_saver_new :: proc(buffer: ^SourceBuffer, file: ^SourceFile) -> ^SourceFileSaver ---

    @(link_name = "gtk_source_file_saver_new_with_target")
    source_file_saver_new_with_target :: proc(buffer: ^SourceBuffer, file: ^SourceFile, target_location: ^gio.File) -> ^SourceFileSaver ---

    @(link_name = "gtk_source_file_saver_get_buffer")
    source_file_saver_get_buffer :: proc(saver: ^SourceFileSaver) -> ^SourceBuffer ---

    @(link_name = "gtk_source_file_saver_get_file")
    source_file_saver_get_file :: proc(saver: ^SourceFileSaver) -> ^SourceFile ---

    @(link_name = "gtk_source_file_saver_get_location")
    source_file_saver_get_location :: proc(saver: ^SourceFileSaver) -> ^gio.File ---

    @(link_name = "gtk_source_file_saver_set_encoding")
    source_file_saver_set_encoding :: proc(saver: ^SourceFileSaver, encoding: ^SourceEncoding) ---

    @(link_name = "gtk_source_file_saver_get_encoding")
    source_file_saver_get_encoding :: proc(saver: ^SourceFileSaver) -> ^SourceEncoding ---

    @(link_name = "gtk_source_file_saver_set_newline_type")
    source_file_saver_set_newline_type :: proc(saver: ^SourceFileSaver, newline_type: SourceNewlineType) ---

    @(link_name = "gtk_source_file_saver_get_newline_type")
    source_file_saver_get_newline_type :: proc(saver: ^SourceFileSaver) -> SourceNewlineType ---

    @(link_name = "gtk_source_file_saver_set_compression_type")
    source_file_saver_set_compression_type :: proc(saver: ^SourceFileSaver, compression_type: SourceCompressionType) ---

    @(link_name = "gtk_source_file_saver_get_compression_type")
    source_file_saver_get_compression_type :: proc(saver: ^SourceFileSaver) -> SourceCompressionType ---

    @(link_name = "gtk_source_file_saver_set_flags")
    source_file_saver_set_flags :: proc(saver: ^SourceFileSaver, flags: SourceFileSaverFlags) ---

    @(link_name = "gtk_source_file_saver_get_flags")
    source_file_saver_get_flags :: proc(saver: ^SourceFileSaver) -> SourceFileSaverFlags ---

    @(link_name = "gtk_source_file_saver_save_async")
    source_file_saver_save_async :: proc(saver: ^SourceFileSaver, io_priority: glib.int_, cancellable: ^gio.Cancellable, progress_callback: gio.FileProgressCallback, progress_callback_data: glib.pointer, progress_callback_notify: glib.DestroyNotify, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_source_file_saver_save_finish")
    source_file_saver_save_finish :: proc(saver: ^SourceFileSaver, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_source_gutter_get_type")
    source_gutter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_gutter_get_view")
    source_gutter_get_view :: proc(gutter: ^SourceGutter) -> ^SourceView ---

    @(link_name = "gtk_source_gutter_insert")
    source_gutter_insert :: proc(gutter: ^SourceGutter, renderer: ^SourceGutterRenderer, position: glib.int_) -> glib.boolean ---

    @(link_name = "gtk_source_gutter_reorder")
    source_gutter_reorder :: proc(gutter: ^SourceGutter, renderer: ^SourceGutterRenderer, position: glib.int_) ---

    @(link_name = "gtk_source_gutter_remove")
    source_gutter_remove :: proc(gutter: ^SourceGutter, renderer: ^SourceGutterRenderer) ---

    @(link_name = "gtk_source_gutter_renderer_get_type")
    source_gutter_renderer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_gutter_renderer_get_xalign")
    source_gutter_renderer_get_xalign :: proc(renderer: ^SourceGutterRenderer) -> glib.float ---

    @(link_name = "gtk_source_gutter_renderer_set_xalign")
    source_gutter_renderer_set_xalign :: proc(renderer: ^SourceGutterRenderer, xalign: glib.float) ---

    @(link_name = "gtk_source_gutter_renderer_get_yalign")
    source_gutter_renderer_get_yalign :: proc(renderer: ^SourceGutterRenderer) -> glib.float ---

    @(link_name = "gtk_source_gutter_renderer_set_yalign")
    source_gutter_renderer_set_yalign :: proc(renderer: ^SourceGutterRenderer, yalign: glib.float) ---

    @(link_name = "gtk_source_gutter_renderer_get_xpad")
    source_gutter_renderer_get_xpad :: proc(renderer: ^SourceGutterRenderer) -> glib.int_ ---

    @(link_name = "gtk_source_gutter_renderer_set_xpad")
    source_gutter_renderer_set_xpad :: proc(renderer: ^SourceGutterRenderer, xpad: glib.int_) ---

    @(link_name = "gtk_source_gutter_renderer_get_ypad")
    source_gutter_renderer_get_ypad :: proc(renderer: ^SourceGutterRenderer) -> glib.int_ ---

    @(link_name = "gtk_source_gutter_renderer_set_ypad")
    source_gutter_renderer_set_ypad :: proc(renderer: ^SourceGutterRenderer, ypad: glib.int_) ---

    @(link_name = "gtk_source_gutter_renderer_get_alignment_mode")
    source_gutter_renderer_get_alignment_mode :: proc(renderer: ^SourceGutterRenderer) -> SourceGutterRendererAlignmentMode ---

    @(link_name = "gtk_source_gutter_renderer_set_alignment_mode")
    source_gutter_renderer_set_alignment_mode :: proc(renderer: ^SourceGutterRenderer, mode: SourceGutterRendererAlignmentMode) ---

    @(link_name = "gtk_source_gutter_renderer_get_buffer")
    source_gutter_renderer_get_buffer :: proc(renderer: ^SourceGutterRenderer) -> ^SourceBuffer ---

    @(link_name = "gtk_source_gutter_renderer_get_view")
    source_gutter_renderer_get_view :: proc(renderer: ^SourceGutterRenderer) -> ^SourceView ---

    @(link_name = "gtk_source_gutter_renderer_activate")
    source_gutter_renderer_activate :: proc(renderer: ^SourceGutterRenderer, iter: ^gtk.TextIter, area: ^gtk.Rectangle, button: glib.uint_, state: gtk.ModifierType, n_presses: glib.int_) ---

    @(link_name = "gtk_source_gutter_renderer_query_activatable")
    source_gutter_renderer_query_activatable :: proc(renderer: ^SourceGutterRenderer, iter: ^gtk.TextIter, area: ^gtk.Rectangle) -> glib.boolean ---

    @(link_name = "gtk_source_gutter_renderer_align_cell")
    source_gutter_renderer_align_cell :: proc(renderer: ^SourceGutterRenderer, line: glib.uint_, width: glib.float, height: glib.float, x: ^glib.float, y: ^glib.float) ---

    @(link_name = "gtk_source_gutter_renderer_text_get_type")
    source_gutter_renderer_text_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_gutter_renderer_text_new")
    source_gutter_renderer_text_new :: proc() -> ^SourceGutterRenderer ---

    @(link_name = "gtk_source_gutter_renderer_text_set_markup")
    source_gutter_renderer_text_set_markup :: proc(renderer: ^SourceGutterRendererText, markup: cstring, length: glib.int_) ---

    @(link_name = "gtk_source_gutter_renderer_text_set_text")
    source_gutter_renderer_text_set_text :: proc(renderer: ^SourceGutterRendererText, text: cstring, length: glib.int_) ---

    @(link_name = "gtk_source_gutter_renderer_text_measure")
    source_gutter_renderer_text_measure :: proc(renderer: ^SourceGutterRendererText, text: cstring, width: ^glib.int_, height: ^glib.int_) ---

    @(link_name = "gtk_source_gutter_renderer_text_measure_markup")
    source_gutter_renderer_text_measure_markup :: proc(renderer: ^SourceGutterRendererText, markup: cstring, width: ^glib.int_, height: ^glib.int_) ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_get_type")
    source_gutter_renderer_pixbuf_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_new")
    source_gutter_renderer_pixbuf_new :: proc() -> ^SourceGutterRenderer ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_set_pixbuf")
    source_gutter_renderer_pixbuf_set_pixbuf :: proc(renderer: ^SourceGutterRendererPixbuf, pixbuf: ^pixbuf.Pixbuf) ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_get_pixbuf")
    source_gutter_renderer_pixbuf_get_pixbuf :: proc(renderer: ^SourceGutterRendererPixbuf) -> ^pixbuf.Pixbuf ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_set_gicon")
    source_gutter_renderer_pixbuf_set_gicon :: proc(renderer: ^SourceGutterRendererPixbuf, icon: ^gio.Icon) ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_get_gicon")
    source_gutter_renderer_pixbuf_get_gicon :: proc(renderer: ^SourceGutterRendererPixbuf) -> ^gio.Icon ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_set_icon_name")
    source_gutter_renderer_pixbuf_set_icon_name :: proc(renderer: ^SourceGutterRendererPixbuf, icon_name: cstring) ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_get_icon_name")
    source_gutter_renderer_pixbuf_get_icon_name :: proc(renderer: ^SourceGutterRendererPixbuf) -> cstring ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_get_paintable")
    source_gutter_renderer_pixbuf_get_paintable :: proc(renderer: ^SourceGutterRendererPixbuf) -> ^gtk.Paintable ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_set_paintable")
    source_gutter_renderer_pixbuf_set_paintable :: proc(renderer: ^SourceGutterRendererPixbuf, paintable: ^gtk.Paintable) ---

    @(link_name = "gtk_source_gutter_renderer_pixbuf_overlay_paintable")
    source_gutter_renderer_pixbuf_overlay_paintable :: proc(renderer: ^SourceGutterRendererPixbuf, paintable: ^gtk.Paintable) ---

    @(link_name = "gtk_source_hover_get_type")
    source_hover_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_hover_add_provider")
    source_hover_add_provider :: proc(self: ^SourceHover, provider: ^SourceHoverProvider) ---

    @(link_name = "gtk_source_hover_remove_provider")
    source_hover_remove_provider :: proc(self: ^SourceHover, provider: ^SourceHoverProvider) ---

    @(link_name = "gtk_source_hover_context_get_type")
    source_hover_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_hover_context_get_view")
    source_hover_context_get_view :: proc(self: ^SourceHoverContext) -> ^SourceView ---

    @(link_name = "gtk_source_hover_context_get_buffer")
    source_hover_context_get_buffer :: proc(self: ^SourceHoverContext) -> ^SourceBuffer ---

    @(link_name = "gtk_source_hover_context_get_iter")
    source_hover_context_get_iter :: proc(self: ^SourceHoverContext, iter: ^gtk.TextIter) -> glib.boolean ---

    @(link_name = "gtk_source_hover_context_get_bounds")
    source_hover_context_get_bounds :: proc(self: ^SourceHoverContext, begin: ^gtk.TextIter, end: ^gtk.TextIter) -> glib.boolean ---

    @(link_name = "gtk_source_hover_display_get_type")
    source_hover_display_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_hover_display_append")
    source_hover_display_append :: proc(self: ^SourceHoverDisplay, child: ^gtk.Widget) ---

    @(link_name = "gtk_source_hover_display_prepend")
    source_hover_display_prepend :: proc(self: ^SourceHoverDisplay, child: ^gtk.Widget) ---

    @(link_name = "gtk_source_hover_display_insert_after")
    source_hover_display_insert_after :: proc(self: ^SourceHoverDisplay, child: ^gtk.Widget, sibling: ^gtk.Widget) ---

    @(link_name = "gtk_source_hover_display_remove")
    source_hover_display_remove :: proc(self: ^SourceHoverDisplay, child: ^gtk.Widget) ---

    @(link_name = "gtk_source_hover_provider_get_type")
    source_hover_provider_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_hover_provider_populate_async")
    source_hover_provider_populate_async :: proc(self: ^SourceHoverProvider, context_p: ^SourceHoverContext, display: ^SourceHoverDisplay, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_source_hover_provider_populate_finish")
    source_hover_provider_populate_finish :: proc(self: ^SourceHoverProvider, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_source_indenter_get_type")
    source_indenter_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_indenter_is_trigger")
    source_indenter_is_trigger :: proc(self: ^SourceIndenter, view: ^SourceView, location: ^gtk.TextIter, state: gtk.ModifierType, keyval: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_source_indenter_indent")
    source_indenter_indent :: proc(self: ^SourceIndenter, view: ^SourceView, iter: ^gtk.TextIter) ---

    @(link_name = "gtk_source_init")
    source_init :: proc() ---

    @(link_name = "gtk_source_finalize")
    source_finalize :: proc() ---

    @(link_name = "gtk_source_language_get_type")
    source_language_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_language_get_id")
    source_language_get_id :: proc(language: ^SourceLanguage) -> cstring ---

    @(link_name = "gtk_source_language_get_name")
    source_language_get_name :: proc(language: ^SourceLanguage) -> cstring ---

    @(link_name = "gtk_source_language_get_section")
    source_language_get_section :: proc(language: ^SourceLanguage) -> cstring ---

    @(link_name = "gtk_source_language_get_hidden")
    source_language_get_hidden :: proc(language: ^SourceLanguage) -> glib.boolean ---

    @(link_name = "gtk_source_language_get_metadata")
    source_language_get_metadata :: proc(language: ^SourceLanguage, name: cstring) -> cstring ---

    @(link_name = "gtk_source_language_get_mime_types")
    source_language_get_mime_types :: proc(language: ^SourceLanguage) -> ^cstring ---

    @(link_name = "gtk_source_language_get_globs")
    source_language_get_globs :: proc(language: ^SourceLanguage) -> ^cstring ---

    @(link_name = "gtk_source_language_get_style_ids")
    source_language_get_style_ids :: proc(language: ^SourceLanguage) -> ^cstring ---

    @(link_name = "gtk_source_language_get_style_name")
    source_language_get_style_name :: proc(language: ^SourceLanguage, style_id: cstring) -> cstring ---

    @(link_name = "gtk_source_language_get_style_fallback")
    source_language_get_style_fallback :: proc(language: ^SourceLanguage, style_id: cstring) -> cstring ---

    @(link_name = "gtk_source_language_manager_get_type")
    source_language_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_language_manager_new")
    source_language_manager_new :: proc() -> ^SourceLanguageManager ---

    @(link_name = "gtk_source_language_manager_get_default")
    source_language_manager_get_default :: proc() -> ^SourceLanguageManager ---

    @(link_name = "gtk_source_language_manager_get_search_path")
    source_language_manager_get_search_path :: proc(lm: ^SourceLanguageManager) -> ^cstring ---

    @(link_name = "gtk_source_language_manager_set_search_path")
    source_language_manager_set_search_path :: proc(lm: ^SourceLanguageManager, dirs: [^]cstring) ---

    @(link_name = "gtk_source_language_manager_append_search_path")
    source_language_manager_append_search_path :: proc(lm: ^SourceLanguageManager, path: cstring) ---

    @(link_name = "gtk_source_language_manager_prepend_search_path")
    source_language_manager_prepend_search_path :: proc(lm: ^SourceLanguageManager, path: cstring) ---

    @(link_name = "gtk_source_language_manager_get_language_ids")
    source_language_manager_get_language_ids :: proc(lm: ^SourceLanguageManager) -> ^cstring ---

    @(link_name = "gtk_source_language_manager_get_language")
    source_language_manager_get_language :: proc(lm: ^SourceLanguageManager, id: cstring) -> ^SourceLanguage ---

    @(link_name = "gtk_source_language_manager_guess_language")
    source_language_manager_guess_language :: proc(lm: ^SourceLanguageManager, filename: cstring, content_type: cstring) -> ^SourceLanguage ---

    @(link_name = "gtk_source_gutter_lines_get_type")
    source_gutter_lines_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_gutter_lines_get_first")
    source_gutter_lines_get_first :: proc(lines: ^SourceGutterLines) -> glib.uint_ ---

    @(link_name = "gtk_source_gutter_lines_get_last")
    source_gutter_lines_get_last :: proc(lines: ^SourceGutterLines) -> glib.uint_ ---

    @(link_name = "gtk_source_gutter_lines_get_iter_at_line")
    source_gutter_lines_get_iter_at_line :: proc(lines: ^SourceGutterLines, iter: ^gtk.TextIter, line: glib.uint_) ---

    @(link_name = "gtk_source_gutter_lines_get_view")
    source_gutter_lines_get_view :: proc(lines: ^SourceGutterLines) -> ^gtk.TextView ---

    @(link_name = "gtk_source_gutter_lines_get_buffer")
    source_gutter_lines_get_buffer :: proc(lines: ^SourceGutterLines) -> ^gtk.TextBuffer ---

    @(link_name = "gtk_source_gutter_lines_add_qclass")
    source_gutter_lines_add_qclass :: proc(lines: ^SourceGutterLines, line: glib.uint_, qname: glib.Quark) ---

    @(link_name = "gtk_source_gutter_lines_add_class")
    source_gutter_lines_add_class :: proc(lines: ^SourceGutterLines, line: glib.uint_, name: cstring) ---

    @(link_name = "gtk_source_gutter_lines_remove_class")
    source_gutter_lines_remove_class :: proc(lines: ^SourceGutterLines, line: glib.uint_, name: cstring) ---

    @(link_name = "gtk_source_gutter_lines_remove_qclass")
    source_gutter_lines_remove_qclass :: proc(lines: ^SourceGutterLines, line: glib.uint_, qname: glib.Quark) ---

    @(link_name = "gtk_source_gutter_lines_has_class")
    source_gutter_lines_has_class :: proc(lines: ^SourceGutterLines, line: glib.uint_, name: cstring) -> glib.boolean ---

    @(link_name = "gtk_source_gutter_lines_has_qclass")
    source_gutter_lines_has_qclass :: proc(lines: ^SourceGutterLines, line: glib.uint_, qname: glib.Quark) -> glib.boolean ---

    @(link_name = "gtk_source_gutter_lines_is_cursor")
    source_gutter_lines_is_cursor :: proc(lines: ^SourceGutterLines, line: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_source_gutter_lines_is_prelit")
    source_gutter_lines_is_prelit :: proc(lines: ^SourceGutterLines, line: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_source_gutter_lines_is_selected")
    source_gutter_lines_is_selected :: proc(lines: ^SourceGutterLines, line: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_source_gutter_lines_get_line_yrange")
    source_gutter_lines_get_line_yrange :: proc(lines: ^SourceGutterLines, line: glib.uint_, mode: SourceGutterRendererAlignmentMode, y: ^glib.int_, height: ^glib.int_) ---

    @(link_name = "gtk_source_gutter_lines_has_any_class")
    source_gutter_lines_has_any_class :: proc(lines: ^SourceGutterLines, line: glib.uint_) -> glib.boolean ---

    @(link_name = "gtk_source_view_get_type")
    source_view_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_view_new")
    source_view_new :: proc() -> ^gtk.Widget ---

    @(link_name = "gtk_source_view_new_with_buffer")
    source_view_new_with_buffer :: proc(buffer: ^SourceBuffer) -> ^gtk.Widget ---

    @(link_name = "gtk_source_view_set_show_line_numbers")
    source_view_set_show_line_numbers :: proc(view: ^SourceView, show: glib.boolean) ---

    @(link_name = "gtk_source_view_get_show_line_numbers")
    source_view_get_show_line_numbers :: proc(view: ^SourceView) -> glib.boolean ---

    @(link_name = "gtk_source_view_set_tab_width")
    source_view_set_tab_width :: proc(view: ^SourceView, width: glib.uint_) ---

    @(link_name = "gtk_source_view_get_tab_width")
    source_view_get_tab_width :: proc(view: ^SourceView) -> glib.uint_ ---

    @(link_name = "gtk_source_view_set_indent_width")
    source_view_set_indent_width :: proc(view: ^SourceView, width: glib.int_) ---

    @(link_name = "gtk_source_view_get_indent_width")
    source_view_get_indent_width :: proc(view: ^SourceView) -> glib.int_ ---

    @(link_name = "gtk_source_view_set_auto_indent")
    source_view_set_auto_indent :: proc(view: ^SourceView, enable: glib.boolean) ---

    @(link_name = "gtk_source_view_get_auto_indent")
    source_view_get_auto_indent :: proc(view: ^SourceView) -> glib.boolean ---

    @(link_name = "gtk_source_view_set_insert_spaces_instead_of_tabs")
    source_view_set_insert_spaces_instead_of_tabs :: proc(view: ^SourceView, enable: glib.boolean) ---

    @(link_name = "gtk_source_view_get_insert_spaces_instead_of_tabs")
    source_view_get_insert_spaces_instead_of_tabs :: proc(view: ^SourceView) -> glib.boolean ---

    @(link_name = "gtk_source_view_set_indent_on_tab")
    source_view_set_indent_on_tab :: proc(view: ^SourceView, enable: glib.boolean) ---

    @(link_name = "gtk_source_view_get_indent_on_tab")
    source_view_get_indent_on_tab :: proc(view: ^SourceView) -> glib.boolean ---

    @(link_name = "gtk_source_view_indent_lines")
    source_view_indent_lines :: proc(view: ^SourceView, start: ^gtk.TextIter, end: ^gtk.TextIter) ---

    @(link_name = "gtk_source_view_unindent_lines")
    source_view_unindent_lines :: proc(view: ^SourceView, start: ^gtk.TextIter, end: ^gtk.TextIter) ---

    @(link_name = "gtk_source_view_set_highlight_current_line")
    source_view_set_highlight_current_line :: proc(view: ^SourceView, highlight: glib.boolean) ---

    @(link_name = "gtk_source_view_get_highlight_current_line")
    source_view_get_highlight_current_line :: proc(view: ^SourceView) -> glib.boolean ---

    @(link_name = "gtk_source_view_set_show_right_margin")
    source_view_set_show_right_margin :: proc(view: ^SourceView, show: glib.boolean) ---

    @(link_name = "gtk_source_view_get_show_right_margin")
    source_view_get_show_right_margin :: proc(view: ^SourceView) -> glib.boolean ---

    @(link_name = "gtk_source_view_set_right_margin_position")
    source_view_set_right_margin_position :: proc(view: ^SourceView, pos: glib.uint_) ---

    @(link_name = "gtk_source_view_get_right_margin_position")
    source_view_get_right_margin_position :: proc(view: ^SourceView) -> glib.uint_ ---

    @(link_name = "gtk_source_view_set_show_line_marks")
    source_view_set_show_line_marks :: proc(view: ^SourceView, show: glib.boolean) ---

    @(link_name = "gtk_source_view_get_show_line_marks")
    source_view_get_show_line_marks :: proc(view: ^SourceView) -> glib.boolean ---

    @(link_name = "gtk_source_view_set_mark_attributes")
    source_view_set_mark_attributes :: proc(view: ^SourceView, category: cstring, attributes: ^SourceMarkAttributes, priority: glib.int_) ---

    @(link_name = "gtk_source_view_get_mark_attributes")
    source_view_get_mark_attributes :: proc(view: ^SourceView, category: cstring, priority: ^glib.int_) -> ^SourceMarkAttributes ---

    @(link_name = "gtk_source_view_set_smart_backspace")
    source_view_set_smart_backspace :: proc(view: ^SourceView, smart_backspace: glib.boolean) ---

    @(link_name = "gtk_source_view_get_smart_backspace")
    source_view_get_smart_backspace :: proc(view: ^SourceView) -> glib.boolean ---

    @(link_name = "gtk_source_view_set_smart_home_end")
    source_view_set_smart_home_end :: proc(view: ^SourceView, smart_home_end: SourceSmartHomeEndType) ---

    @(link_name = "gtk_source_view_get_smart_home_end")
    source_view_get_smart_home_end :: proc(view: ^SourceView) -> SourceSmartHomeEndType ---

    @(link_name = "gtk_source_view_set_enable_snippets")
    source_view_set_enable_snippets :: proc(view: ^SourceView, enable_snippets: glib.boolean) ---

    @(link_name = "gtk_source_view_get_enable_snippets")
    source_view_get_enable_snippets :: proc(view: ^SourceView) -> glib.boolean ---

    @(link_name = "gtk_source_view_get_visual_column")
    source_view_get_visual_column :: proc(view: ^SourceView, iter: ^gtk.TextIter) -> glib.uint_ ---

    @(link_name = "gtk_source_view_get_completion")
    source_view_get_completion :: proc(view: ^SourceView) -> ^SourceCompletion ---

    @(link_name = "gtk_source_view_get_hover")
    source_view_get_hover :: proc(view: ^SourceView) -> ^SourceHover ---

    @(link_name = "gtk_source_view_get_indenter")
    source_view_get_indenter :: proc(view: ^SourceView) -> ^SourceIndenter ---

    @(link_name = "gtk_source_view_set_indenter")
    source_view_set_indenter :: proc(view: ^SourceView, indenter: ^SourceIndenter) ---

    @(link_name = "gtk_source_view_get_gutter")
    source_view_get_gutter :: proc(view: ^SourceView, window_type: gtk.TextWindowType) -> ^SourceGutter ---

    @(link_name = "gtk_source_view_set_background_pattern")
    source_view_set_background_pattern :: proc(view: ^SourceView, background_pattern: SourceBackgroundPatternType) ---

    @(link_name = "gtk_source_view_get_background_pattern")
    source_view_get_background_pattern :: proc(view: ^SourceView) -> SourceBackgroundPatternType ---

    @(link_name = "gtk_source_view_get_space_drawer")
    source_view_get_space_drawer :: proc(view: ^SourceView) -> ^SourceSpaceDrawer ---

    @(link_name = "gtk_source_view_push_snippet")
    source_view_push_snippet :: proc(view: ^SourceView, snippet: ^SourceSnippet, location: ^gtk.TextIter) ---

    @(link_name = "gtk_source_map_get_type")
    source_map_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_map_new")
    source_map_new :: proc() -> ^gtk.Widget ---

    @(link_name = "gtk_source_map_set_view")
    source_map_set_view :: proc(map_p: ^SourceMap, view: ^SourceView) ---

    @(link_name = "gtk_source_map_get_view")
    source_map_get_view :: proc(map_p: ^SourceMap) -> ^SourceView ---

    @(link_name = "gtk_source_mark_get_type")
    source_mark_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_mark_new")
    source_mark_new :: proc(name: cstring, category: cstring) -> ^SourceMark ---

    @(link_name = "gtk_source_mark_get_category")
    source_mark_get_category :: proc(mark: ^SourceMark) -> cstring ---

    @(link_name = "gtk_source_mark_next")
    source_mark_next :: proc(mark: ^SourceMark, category: cstring) -> ^SourceMark ---

    @(link_name = "gtk_source_mark_prev")
    source_mark_prev :: proc(mark: ^SourceMark, category: cstring) -> ^SourceMark ---

    @(link_name = "gtk_source_mark_attributes_get_type")
    source_mark_attributes_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_mark_attributes_new")
    source_mark_attributes_new :: proc() -> ^SourceMarkAttributes ---

    @(link_name = "gtk_source_mark_attributes_set_background")
    source_mark_attributes_set_background :: proc(attributes: ^SourceMarkAttributes, background: ^gtk.RGBA) ---

    @(link_name = "gtk_source_mark_attributes_get_background")
    source_mark_attributes_get_background :: proc(attributes: ^SourceMarkAttributes, background: ^gtk.RGBA) -> glib.boolean ---

    @(link_name = "gtk_source_mark_attributes_set_icon_name")
    source_mark_attributes_set_icon_name :: proc(attributes: ^SourceMarkAttributes, icon_name: cstring) ---

    @(link_name = "gtk_source_mark_attributes_get_icon_name")
    source_mark_attributes_get_icon_name :: proc(attributes: ^SourceMarkAttributes) -> cstring ---

    @(link_name = "gtk_source_mark_attributes_set_gicon")
    source_mark_attributes_set_gicon :: proc(attributes: ^SourceMarkAttributes, gicon: ^gio.Icon) ---

    @(link_name = "gtk_source_mark_attributes_get_gicon")
    source_mark_attributes_get_gicon :: proc(attributes: ^SourceMarkAttributes) -> ^gio.Icon ---

    @(link_name = "gtk_source_mark_attributes_set_pixbuf")
    source_mark_attributes_set_pixbuf :: proc(attributes: ^SourceMarkAttributes, pixbuf: ^pixbuf.Pixbuf) ---

    @(link_name = "gtk_source_mark_attributes_get_pixbuf")
    source_mark_attributes_get_pixbuf :: proc(attributes: ^SourceMarkAttributes) -> ^pixbuf.Pixbuf ---

    @(link_name = "gtk_source_mark_attributes_render_icon")
    source_mark_attributes_render_icon :: proc(attributes: ^SourceMarkAttributes, widget: ^gtk.Widget, size_p: glib.int_) -> ^gtk.Paintable ---

    @(link_name = "gtk_source_mark_attributes_get_tooltip_text")
    source_mark_attributes_get_tooltip_text :: proc(attributes: ^SourceMarkAttributes, mark: ^SourceMark) -> cstring ---

    @(link_name = "gtk_source_mark_attributes_get_tooltip_markup")
    source_mark_attributes_get_tooltip_markup :: proc(attributes: ^SourceMarkAttributes, mark: ^SourceMark) -> cstring ---

    @(link_name = "gtk_source_print_compositor_get_type")
    source_print_compositor_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_print_compositor_new")
    source_print_compositor_new :: proc(buffer: ^SourceBuffer) -> ^SourcePrintCompositor ---

    @(link_name = "gtk_source_print_compositor_new_from_view")
    source_print_compositor_new_from_view :: proc(view: ^SourceView) -> ^SourcePrintCompositor ---

    @(link_name = "gtk_source_print_compositor_get_buffer")
    source_print_compositor_get_buffer :: proc(compositor: ^SourcePrintCompositor) -> ^SourceBuffer ---

    @(link_name = "gtk_source_print_compositor_set_tab_width")
    source_print_compositor_set_tab_width :: proc(compositor: ^SourcePrintCompositor, width: glib.uint_) ---

    @(link_name = "gtk_source_print_compositor_get_tab_width")
    source_print_compositor_get_tab_width :: proc(compositor: ^SourcePrintCompositor) -> glib.uint_ ---

    @(link_name = "gtk_source_print_compositor_set_wrap_mode")
    source_print_compositor_set_wrap_mode :: proc(compositor: ^SourcePrintCompositor, wrap_mode: gtk.WrapMode) ---

    @(link_name = "gtk_source_print_compositor_get_wrap_mode")
    source_print_compositor_get_wrap_mode :: proc(compositor: ^SourcePrintCompositor) -> gtk.WrapMode ---

    @(link_name = "gtk_source_print_compositor_set_highlight_syntax")
    source_print_compositor_set_highlight_syntax :: proc(compositor: ^SourcePrintCompositor, highlight: glib.boolean) ---

    @(link_name = "gtk_source_print_compositor_get_highlight_syntax")
    source_print_compositor_get_highlight_syntax :: proc(compositor: ^SourcePrintCompositor) -> glib.boolean ---

    @(link_name = "gtk_source_print_compositor_set_print_line_numbers")
    source_print_compositor_set_print_line_numbers :: proc(compositor: ^SourcePrintCompositor, interval: glib.uint_) ---

    @(link_name = "gtk_source_print_compositor_get_print_line_numbers")
    source_print_compositor_get_print_line_numbers :: proc(compositor: ^SourcePrintCompositor) -> glib.uint_ ---

    @(link_name = "gtk_source_print_compositor_set_body_font_name")
    source_print_compositor_set_body_font_name :: proc(compositor: ^SourcePrintCompositor, font_name: cstring) ---

    @(link_name = "gtk_source_print_compositor_get_body_font_name")
    source_print_compositor_get_body_font_name :: proc(compositor: ^SourcePrintCompositor) -> cstring ---

    @(link_name = "gtk_source_print_compositor_set_line_numbers_font_name")
    source_print_compositor_set_line_numbers_font_name :: proc(compositor: ^SourcePrintCompositor, font_name: cstring) ---

    @(link_name = "gtk_source_print_compositor_get_line_numbers_font_name")
    source_print_compositor_get_line_numbers_font_name :: proc(compositor: ^SourcePrintCompositor) -> cstring ---

    @(link_name = "gtk_source_print_compositor_set_header_font_name")
    source_print_compositor_set_header_font_name :: proc(compositor: ^SourcePrintCompositor, font_name: cstring) ---

    @(link_name = "gtk_source_print_compositor_get_header_font_name")
    source_print_compositor_get_header_font_name :: proc(compositor: ^SourcePrintCompositor) -> cstring ---

    @(link_name = "gtk_source_print_compositor_set_footer_font_name")
    source_print_compositor_set_footer_font_name :: proc(compositor: ^SourcePrintCompositor, font_name: cstring) ---

    @(link_name = "gtk_source_print_compositor_get_footer_font_name")
    source_print_compositor_get_footer_font_name :: proc(compositor: ^SourcePrintCompositor) -> cstring ---

    @(link_name = "gtk_source_print_compositor_get_top_margin")
    source_print_compositor_get_top_margin :: proc(compositor: ^SourcePrintCompositor, unit: gtk.Unit) -> glib.double ---

    @(link_name = "gtk_source_print_compositor_set_top_margin")
    source_print_compositor_set_top_margin :: proc(compositor: ^SourcePrintCompositor, margin: glib.double, unit: gtk.Unit) ---

    @(link_name = "gtk_source_print_compositor_get_bottom_margin")
    source_print_compositor_get_bottom_margin :: proc(compositor: ^SourcePrintCompositor, unit: gtk.Unit) -> glib.double ---

    @(link_name = "gtk_source_print_compositor_set_bottom_margin")
    source_print_compositor_set_bottom_margin :: proc(compositor: ^SourcePrintCompositor, margin: glib.double, unit: gtk.Unit) ---

    @(link_name = "gtk_source_print_compositor_get_left_margin")
    source_print_compositor_get_left_margin :: proc(compositor: ^SourcePrintCompositor, unit: gtk.Unit) -> glib.double ---

    @(link_name = "gtk_source_print_compositor_set_left_margin")
    source_print_compositor_set_left_margin :: proc(compositor: ^SourcePrintCompositor, margin: glib.double, unit: gtk.Unit) ---

    @(link_name = "gtk_source_print_compositor_get_right_margin")
    source_print_compositor_get_right_margin :: proc(compositor: ^SourcePrintCompositor, unit: gtk.Unit) -> glib.double ---

    @(link_name = "gtk_source_print_compositor_set_right_margin")
    source_print_compositor_set_right_margin :: proc(compositor: ^SourcePrintCompositor, margin: glib.double, unit: gtk.Unit) ---

    @(link_name = "gtk_source_print_compositor_set_print_header")
    source_print_compositor_set_print_header :: proc(compositor: ^SourcePrintCompositor, print: glib.boolean) ---

    @(link_name = "gtk_source_print_compositor_get_print_header")
    source_print_compositor_get_print_header :: proc(compositor: ^SourcePrintCompositor) -> glib.boolean ---

    @(link_name = "gtk_source_print_compositor_set_print_footer")
    source_print_compositor_set_print_footer :: proc(compositor: ^SourcePrintCompositor, print: glib.boolean) ---

    @(link_name = "gtk_source_print_compositor_get_print_footer")
    source_print_compositor_get_print_footer :: proc(compositor: ^SourcePrintCompositor) -> glib.boolean ---

    @(link_name = "gtk_source_print_compositor_set_header_format")
    source_print_compositor_set_header_format :: proc(compositor: ^SourcePrintCompositor, separator: glib.boolean, left: cstring, center: cstring, right: cstring) ---

    @(link_name = "gtk_source_print_compositor_set_footer_format")
    source_print_compositor_set_footer_format :: proc(compositor: ^SourcePrintCompositor, separator: glib.boolean, left: cstring, center: cstring, right: cstring) ---

    @(link_name = "gtk_source_print_compositor_get_n_pages")
    source_print_compositor_get_n_pages :: proc(compositor: ^SourcePrintCompositor) -> glib.int_ ---

    @(link_name = "gtk_source_print_compositor_paginate")
    source_print_compositor_paginate :: proc(compositor: ^SourcePrintCompositor, context_p: ^gtk.PrintContext) -> glib.boolean ---

    @(link_name = "gtk_source_print_compositor_get_pagination_progress")
    source_print_compositor_get_pagination_progress :: proc(compositor: ^SourcePrintCompositor) -> glib.double ---

    @(link_name = "gtk_source_print_compositor_draw_page")
    source_print_compositor_draw_page :: proc(compositor: ^SourcePrintCompositor, context_p: ^gtk.PrintContext, page_nr: glib.int_) ---

    @(link_name = "gtk_source_print_compositor_ignore_tag")
    source_print_compositor_ignore_tag :: proc(compositor: ^SourcePrintCompositor, tag: ^gtk.TextTag) ---

    @(link_name = "gtk_source_region_get_type")
    source_region_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_region_new")
    source_region_new :: proc(buffer: ^gtk.TextBuffer) -> ^SourceRegion ---

    @(link_name = "gtk_source_region_get_buffer")
    source_region_get_buffer :: proc(region: ^SourceRegion) -> ^gtk.TextBuffer ---

    @(link_name = "gtk_source_region_add_subregion")
    source_region_add_subregion :: proc(region: ^SourceRegion, _start: ^gtk.TextIter, _end: ^gtk.TextIter) ---

    @(link_name = "gtk_source_region_add_region")
    source_region_add_region :: proc(region: ^SourceRegion, region_to_add: ^SourceRegion) ---

    @(link_name = "gtk_source_region_subtract_subregion")
    source_region_subtract_subregion :: proc(region: ^SourceRegion, _start: ^gtk.TextIter, _end: ^gtk.TextIter) ---

    @(link_name = "gtk_source_region_subtract_region")
    source_region_subtract_region :: proc(region: ^SourceRegion, region_to_subtract: ^SourceRegion) ---

    @(link_name = "gtk_source_region_intersect_subregion")
    source_region_intersect_subregion :: proc(region: ^SourceRegion, _start: ^gtk.TextIter, _end: ^gtk.TextIter) -> ^SourceRegion ---

    @(link_name = "gtk_source_region_intersect_region")
    source_region_intersect_region :: proc(region1: ^SourceRegion, region2: ^SourceRegion) -> ^SourceRegion ---

    @(link_name = "gtk_source_region_is_empty")
    source_region_is_empty :: proc(region: ^SourceRegion) -> glib.boolean ---

    @(link_name = "gtk_source_region_get_bounds")
    source_region_get_bounds :: proc(region: ^SourceRegion, start: ^gtk.TextIter, end: ^gtk.TextIter) -> glib.boolean ---

    @(link_name = "gtk_source_region_get_start_region_iter")
    source_region_get_start_region_iter :: proc(region: ^SourceRegion, iter: ^SourceRegionIter) ---

    @(link_name = "gtk_source_region_iter_is_end")
    source_region_iter_is_end :: proc(iter: ^SourceRegionIter) -> glib.boolean ---

    @(link_name = "gtk_source_region_iter_next")
    source_region_iter_next :: proc(iter: ^SourceRegionIter) -> glib.boolean ---

    @(link_name = "gtk_source_region_iter_get_subregion")
    source_region_iter_get_subregion :: proc(iter: ^SourceRegionIter, start: ^gtk.TextIter, end: ^gtk.TextIter) -> glib.boolean ---

    @(link_name = "gtk_source_region_to_string")
    source_region_to_string :: proc(region: ^SourceRegion) -> cstring ---

    @(link_name = "gtk_source_scheduler_add")
    source_scheduler_add :: proc(callback: SourceSchedulerCallback, user_data: glib.pointer) -> glib.size ---

    @(link_name = "gtk_source_scheduler_add_full")
    source_scheduler_add_full :: proc(callback: SourceSchedulerCallback, user_data: glib.pointer, notify: glib.DestroyNotify) -> glib.size ---

    @(link_name = "gtk_source_scheduler_remove")
    source_scheduler_remove :: proc(handler_id: glib.size) ---

    @(link_name = "gtk_source_search_context_get_type")
    source_search_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_search_context_new")
    source_search_context_new :: proc(buffer: ^SourceBuffer, settings: ^SourceSearchSettings) -> ^SourceSearchContext ---

    @(link_name = "gtk_source_search_context_get_buffer")
    source_search_context_get_buffer :: proc(search: ^SourceSearchContext) -> ^SourceBuffer ---

    @(link_name = "gtk_source_search_context_get_settings")
    source_search_context_get_settings :: proc(search: ^SourceSearchContext) -> ^SourceSearchSettings ---

    @(link_name = "gtk_source_search_context_get_highlight")
    source_search_context_get_highlight :: proc(search: ^SourceSearchContext) -> glib.boolean ---

    @(link_name = "gtk_source_search_context_set_highlight")
    source_search_context_set_highlight :: proc(search: ^SourceSearchContext, highlight: glib.boolean) ---

    @(link_name = "gtk_source_search_context_get_match_style")
    source_search_context_get_match_style :: proc(search: ^SourceSearchContext) -> ^SourceStyle ---

    @(link_name = "gtk_source_search_context_set_match_style")
    source_search_context_set_match_style :: proc(search: ^SourceSearchContext, match_style: ^SourceStyle) ---

    @(link_name = "gtk_source_search_context_get_regex_error")
    source_search_context_get_regex_error :: proc(search: ^SourceSearchContext) -> ^glib.Error ---

    @(link_name = "gtk_source_search_context_get_occurrences_count")
    source_search_context_get_occurrences_count :: proc(search: ^SourceSearchContext) -> glib.int_ ---

    @(link_name = "gtk_source_search_context_get_occurrence_position")
    source_search_context_get_occurrence_position :: proc(search: ^SourceSearchContext, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter) -> glib.int_ ---

    @(link_name = "gtk_source_search_context_forward")
    source_search_context_forward :: proc(search: ^SourceSearchContext, iter: ^gtk.TextIter, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter, has_wrapped_around: ^glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_source_search_context_forward_async")
    source_search_context_forward_async :: proc(search: ^SourceSearchContext, iter: ^gtk.TextIter, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_source_search_context_forward_finish")
    source_search_context_forward_finish :: proc(search: ^SourceSearchContext, result: ^gio.AsyncResult, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter, has_wrapped_around: ^glib.boolean, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_source_search_context_backward")
    source_search_context_backward :: proc(search: ^SourceSearchContext, iter: ^gtk.TextIter, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter, has_wrapped_around: ^glib.boolean) -> glib.boolean ---

    @(link_name = "gtk_source_search_context_backward_async")
    source_search_context_backward_async :: proc(search: ^SourceSearchContext, iter: ^gtk.TextIter, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "gtk_source_search_context_backward_finish")
    source_search_context_backward_finish :: proc(search: ^SourceSearchContext, result: ^gio.AsyncResult, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter, has_wrapped_around: ^glib.boolean, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_source_search_context_replace")
    source_search_context_replace :: proc(search: ^SourceSearchContext, match_start: ^gtk.TextIter, match_end: ^gtk.TextIter, replace: cstring, replace_length: glib.int_, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "gtk_source_search_context_replace_all")
    source_search_context_replace_all :: proc(search: ^SourceSearchContext, replace: cstring, replace_length: glib.int_, error: ^^glib.Error) -> glib.uint_ ---

    @(link_name = "gtk_source_search_settings_get_type")
    source_search_settings_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_search_settings_new")
    source_search_settings_new :: proc() -> ^SourceSearchSettings ---

    @(link_name = "gtk_source_search_settings_set_search_text")
    source_search_settings_set_search_text :: proc(settings: ^SourceSearchSettings, search_text: cstring) ---

    @(link_name = "gtk_source_search_settings_get_search_text")
    source_search_settings_get_search_text :: proc(settings: ^SourceSearchSettings) -> cstring ---

    @(link_name = "gtk_source_search_settings_set_case_sensitive")
    source_search_settings_set_case_sensitive :: proc(settings: ^SourceSearchSettings, case_sensitive: glib.boolean) ---

    @(link_name = "gtk_source_search_settings_get_case_sensitive")
    source_search_settings_get_case_sensitive :: proc(settings: ^SourceSearchSettings) -> glib.boolean ---

    @(link_name = "gtk_source_search_settings_set_at_word_boundaries")
    source_search_settings_set_at_word_boundaries :: proc(settings: ^SourceSearchSettings, at_word_boundaries: glib.boolean) ---

    @(link_name = "gtk_source_search_settings_get_at_word_boundaries")
    source_search_settings_get_at_word_boundaries :: proc(settings: ^SourceSearchSettings) -> glib.boolean ---

    @(link_name = "gtk_source_search_settings_set_wrap_around")
    source_search_settings_set_wrap_around :: proc(settings: ^SourceSearchSettings, wrap_around: glib.boolean) ---

    @(link_name = "gtk_source_search_settings_get_wrap_around")
    source_search_settings_get_wrap_around :: proc(settings: ^SourceSearchSettings) -> glib.boolean ---

    @(link_name = "gtk_source_search_settings_set_regex_enabled")
    source_search_settings_set_regex_enabled :: proc(settings: ^SourceSearchSettings, regex_enabled: glib.boolean) ---

    @(link_name = "gtk_source_search_settings_get_regex_enabled")
    source_search_settings_get_regex_enabled :: proc(settings: ^SourceSearchSettings) -> glib.boolean ---

    @(link_name = "gtk_source_search_settings_get_visible_only")
    source_search_settings_get_visible_only :: proc(settings: ^SourceSearchSettings) -> glib.boolean ---

    @(link_name = "gtk_source_search_settings_set_visible_only")
    source_search_settings_set_visible_only :: proc(settings: ^SourceSearchSettings, visible_only: glib.boolean) ---

    @(link_name = "gtk_source_snippet_get_type")
    source_snippet_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_snippet_new")
    source_snippet_new :: proc(trigger: cstring, language_id: cstring) -> ^SourceSnippet ---

    @(link_name = "gtk_source_snippet_new_parsed")
    source_snippet_new_parsed :: proc(text: cstring, error: ^^glib.Error) -> ^SourceSnippet ---

    @(link_name = "gtk_source_snippet_copy")
    source_snippet_copy :: proc(snippet: ^SourceSnippet) -> ^SourceSnippet ---

    @(link_name = "gtk_source_snippet_get_name")
    source_snippet_get_name :: proc(snippet: ^SourceSnippet) -> cstring ---

    @(link_name = "gtk_source_snippet_set_name")
    source_snippet_set_name :: proc(snippet: ^SourceSnippet, name: cstring) ---

    @(link_name = "gtk_source_snippet_get_trigger")
    source_snippet_get_trigger :: proc(snippet: ^SourceSnippet) -> cstring ---

    @(link_name = "gtk_source_snippet_set_trigger")
    source_snippet_set_trigger :: proc(snippet: ^SourceSnippet, trigger: cstring) ---

    @(link_name = "gtk_source_snippet_get_language_id")
    source_snippet_get_language_id :: proc(snippet: ^SourceSnippet) -> cstring ---

    @(link_name = "gtk_source_snippet_set_language_id")
    source_snippet_set_language_id :: proc(snippet: ^SourceSnippet, language_id: cstring) ---

    @(link_name = "gtk_source_snippet_get_description")
    source_snippet_get_description :: proc(snippet: ^SourceSnippet) -> cstring ---

    @(link_name = "gtk_source_snippet_set_description")
    source_snippet_set_description :: proc(snippet: ^SourceSnippet, description: cstring) ---

    @(link_name = "gtk_source_snippet_add_chunk")
    source_snippet_add_chunk :: proc(snippet: ^SourceSnippet, chunk: ^SourceSnippetChunk) ---

    @(link_name = "gtk_source_snippet_get_n_chunks")
    source_snippet_get_n_chunks :: proc(snippet: ^SourceSnippet) -> glib.uint_ ---

    @(link_name = "gtk_source_snippet_get_focus_position")
    source_snippet_get_focus_position :: proc(snippet: ^SourceSnippet) -> glib.int_ ---

    @(link_name = "gtk_source_snippet_get_nth_chunk")
    source_snippet_get_nth_chunk :: proc(snippet: ^SourceSnippet, nth: glib.uint_) -> ^SourceSnippetChunk ---

    @(link_name = "gtk_source_snippet_get_context")
    source_snippet_get_context :: proc(snippet: ^SourceSnippet) -> ^SourceSnippetContext ---

    @(link_name = "gtk_source_snippet_chunk_get_type")
    source_snippet_chunk_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_snippet_chunk_new")
    source_snippet_chunk_new :: proc() -> ^SourceSnippetChunk ---

    @(link_name = "gtk_source_snippet_chunk_copy")
    source_snippet_chunk_copy :: proc(chunk: ^SourceSnippetChunk) -> ^SourceSnippetChunk ---

    @(link_name = "gtk_source_snippet_chunk_get_context")
    source_snippet_chunk_get_context :: proc(chunk: ^SourceSnippetChunk) -> ^SourceSnippetContext ---

    @(link_name = "gtk_source_snippet_chunk_set_context")
    source_snippet_chunk_set_context :: proc(chunk: ^SourceSnippetChunk, context_p: ^SourceSnippetContext) ---

    @(link_name = "gtk_source_snippet_chunk_get_spec")
    source_snippet_chunk_get_spec :: proc(chunk: ^SourceSnippetChunk) -> cstring ---

    @(link_name = "gtk_source_snippet_chunk_set_spec")
    source_snippet_chunk_set_spec :: proc(chunk: ^SourceSnippetChunk, spec: cstring) ---

    @(link_name = "gtk_source_snippet_chunk_get_focus_position")
    source_snippet_chunk_get_focus_position :: proc(chunk: ^SourceSnippetChunk) -> glib.int_ ---

    @(link_name = "gtk_source_snippet_chunk_set_focus_position")
    source_snippet_chunk_set_focus_position :: proc(chunk: ^SourceSnippetChunk, focus_position: glib.int_) ---

    @(link_name = "gtk_source_snippet_chunk_get_text")
    source_snippet_chunk_get_text :: proc(chunk: ^SourceSnippetChunk) -> cstring ---

    @(link_name = "gtk_source_snippet_chunk_set_text")
    source_snippet_chunk_set_text :: proc(chunk: ^SourceSnippetChunk, text: cstring) ---

    @(link_name = "gtk_source_snippet_chunk_get_text_set")
    source_snippet_chunk_get_text_set :: proc(chunk: ^SourceSnippetChunk) -> glib.boolean ---

    @(link_name = "gtk_source_snippet_chunk_set_text_set")
    source_snippet_chunk_set_text_set :: proc(chunk: ^SourceSnippetChunk, text_set: glib.boolean) ---

    @(link_name = "gtk_source_snippet_chunk_get_tooltip_text")
    source_snippet_chunk_get_tooltip_text :: proc(chunk: ^SourceSnippetChunk) -> cstring ---

    @(link_name = "gtk_source_snippet_chunk_set_tooltip_text")
    source_snippet_chunk_set_tooltip_text :: proc(chunk: ^SourceSnippetChunk, tooltip_text: cstring) ---

    @(link_name = "gtk_source_snippet_context_get_type")
    source_snippet_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_snippet_context_new")
    source_snippet_context_new :: proc() -> ^SourceSnippetContext ---

    @(link_name = "gtk_source_snippet_context_clear_variables")
    source_snippet_context_clear_variables :: proc(self: ^SourceSnippetContext) ---

    @(link_name = "gtk_source_snippet_context_set_variable")
    source_snippet_context_set_variable :: proc(self: ^SourceSnippetContext, key: cstring, value: cstring) ---

    @(link_name = "gtk_source_snippet_context_set_constant")
    source_snippet_context_set_constant :: proc(self: ^SourceSnippetContext, key: cstring, value: cstring) ---

    @(link_name = "gtk_source_snippet_context_get_variable")
    source_snippet_context_get_variable :: proc(self: ^SourceSnippetContext, key: cstring) -> cstring ---

    @(link_name = "gtk_source_snippet_context_expand")
    source_snippet_context_expand :: proc(self: ^SourceSnippetContext, input: cstring) -> cstring ---

    @(link_name = "gtk_source_snippet_context_set_tab_width")
    source_snippet_context_set_tab_width :: proc(self: ^SourceSnippetContext, tab_width: glib.int_) ---

    @(link_name = "gtk_source_snippet_context_set_use_spaces")
    source_snippet_context_set_use_spaces :: proc(self: ^SourceSnippetContext, use_spaces: glib.boolean) ---

    @(link_name = "gtk_source_snippet_context_set_line_prefix")
    source_snippet_context_set_line_prefix :: proc(self: ^SourceSnippetContext, line_prefix: cstring) ---

    @(link_name = "gtk_source_snippet_manager_get_type")
    source_snippet_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_snippet_manager_get_default")
    source_snippet_manager_get_default :: proc() -> ^SourceSnippetManager ---

    @(link_name = "gtk_source_snippet_manager_get_search_path")
    source_snippet_manager_get_search_path :: proc(self: ^SourceSnippetManager) -> ^cstring ---

    @(link_name = "gtk_source_snippet_manager_set_search_path")
    source_snippet_manager_set_search_path :: proc(self: ^SourceSnippetManager, dirs: [^]cstring) ---

    @(link_name = "gtk_source_snippet_manager_get_snippet")
    source_snippet_manager_get_snippet :: proc(self: ^SourceSnippetManager, group: cstring, language_id: cstring, trigger: cstring) -> ^SourceSnippet ---

    @(link_name = "gtk_source_snippet_manager_list_groups")
    source_snippet_manager_list_groups :: proc(self: ^SourceSnippetManager) -> ^cstring ---

    @(link_name = "gtk_source_snippet_manager_list_matching")
    source_snippet_manager_list_matching :: proc(self: ^SourceSnippetManager, group: cstring, language_id: cstring, trigger_prefix: cstring) -> ^gio.ListModel ---

    @(link_name = "gtk_source_snippet_manager_list_all")
    source_snippet_manager_list_all :: proc(self: ^SourceSnippetManager) -> ^gio.ListModel ---

    @(link_name = "gtk_source_space_drawer_get_type")
    source_space_drawer_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_space_drawer_new")
    source_space_drawer_new :: proc() -> ^SourceSpaceDrawer ---

    @(link_name = "gtk_source_space_drawer_get_types_for_locations")
    source_space_drawer_get_types_for_locations :: proc(drawer: ^SourceSpaceDrawer, locations: SourceSpaceLocationFlags) -> SourceSpaceTypeFlags ---

    @(link_name = "gtk_source_space_drawer_set_types_for_locations")
    source_space_drawer_set_types_for_locations :: proc(drawer: ^SourceSpaceDrawer, locations: SourceSpaceLocationFlags, types: SourceSpaceTypeFlags) ---

    @(link_name = "gtk_source_space_drawer_get_matrix")
    source_space_drawer_get_matrix :: proc(drawer: ^SourceSpaceDrawer) -> ^glib.Variant ---

    @(link_name = "gtk_source_space_drawer_set_matrix")
    source_space_drawer_set_matrix :: proc(drawer: ^SourceSpaceDrawer, matrix_p: ^glib.Variant) ---

    @(link_name = "gtk_source_space_drawer_get_enable_matrix")
    source_space_drawer_get_enable_matrix :: proc(drawer: ^SourceSpaceDrawer) -> glib.boolean ---

    @(link_name = "gtk_source_space_drawer_set_enable_matrix")
    source_space_drawer_set_enable_matrix :: proc(drawer: ^SourceSpaceDrawer, enable_matrix: glib.boolean) ---

    @(link_name = "gtk_source_space_drawer_bind_matrix_setting")
    source_space_drawer_bind_matrix_setting :: proc(drawer: ^SourceSpaceDrawer, settings: ^gio.Settings, key: cstring, flags: gio.SettingsBindFlags) ---

    @(link_name = "gtk_source_style_get_type")
    source_style_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_style_copy")
    source_style_copy :: proc(style: ^SourceStyle) -> ^SourceStyle ---

    @(link_name = "gtk_source_style_apply")
    source_style_apply :: proc(style: ^SourceStyle, tag: ^gtk.TextTag) ---

    @(link_name = "gtk_source_style_scheme_get_type")
    source_style_scheme_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_style_scheme_get_id")
    source_style_scheme_get_id :: proc(scheme: ^SourceStyleScheme) -> cstring ---

    @(link_name = "gtk_source_style_scheme_get_name")
    source_style_scheme_get_name :: proc(scheme: ^SourceStyleScheme) -> cstring ---

    @(link_name = "gtk_source_style_scheme_get_description")
    source_style_scheme_get_description :: proc(scheme: ^SourceStyleScheme) -> cstring ---

    @(link_name = "gtk_source_style_scheme_get_authors")
    source_style_scheme_get_authors :: proc(scheme: ^SourceStyleScheme) -> ^cstring ---

    @(link_name = "gtk_source_style_scheme_get_filename")
    source_style_scheme_get_filename :: proc(scheme: ^SourceStyleScheme) -> cstring ---

    @(link_name = "gtk_source_style_scheme_get_style")
    source_style_scheme_get_style :: proc(scheme: ^SourceStyleScheme, style_id: cstring) -> ^SourceStyle ---

    @(link_name = "gtk_source_style_scheme_get_metadata")
    source_style_scheme_get_metadata :: proc(scheme: ^SourceStyleScheme, name: cstring) -> cstring ---

    @(link_name = "gtk_source_style_scheme_chooser_get_type")
    source_style_scheme_chooser_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_style_scheme_chooser_get_style_scheme")
    source_style_scheme_chooser_get_style_scheme :: proc(chooser: ^SourceStyleSchemeChooser) -> ^SourceStyleScheme ---

    @(link_name = "gtk_source_style_scheme_chooser_set_style_scheme")
    source_style_scheme_chooser_set_style_scheme :: proc(chooser: ^SourceStyleSchemeChooser, scheme: ^SourceStyleScheme) ---

    @(link_name = "gtk_source_style_scheme_chooser_button_get_type")
    source_style_scheme_chooser_button_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_style_scheme_chooser_button_new")
    source_style_scheme_chooser_button_new :: proc() -> ^gtk.Widget ---

    @(link_name = "gtk_source_style_scheme_chooser_widget_get_type")
    source_style_scheme_chooser_widget_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_style_scheme_chooser_widget_new")
    source_style_scheme_chooser_widget_new :: proc() -> ^gtk.Widget ---

    @(link_name = "gtk_source_style_scheme_manager_get_type")
    source_style_scheme_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_style_scheme_manager_new")
    source_style_scheme_manager_new :: proc() -> ^SourceStyleSchemeManager ---

    @(link_name = "gtk_source_style_scheme_manager_get_default")
    source_style_scheme_manager_get_default :: proc() -> ^SourceStyleSchemeManager ---

    @(link_name = "gtk_source_style_scheme_manager_set_search_path")
    source_style_scheme_manager_set_search_path :: proc(manager: ^SourceStyleSchemeManager, path: ^cstring) ---

    @(link_name = "gtk_source_style_scheme_manager_append_search_path")
    source_style_scheme_manager_append_search_path :: proc(manager: ^SourceStyleSchemeManager, path: cstring) ---

    @(link_name = "gtk_source_style_scheme_manager_prepend_search_path")
    source_style_scheme_manager_prepend_search_path :: proc(manager: ^SourceStyleSchemeManager, path: cstring) ---

    @(link_name = "gtk_source_style_scheme_manager_get_search_path")
    source_style_scheme_manager_get_search_path :: proc(manager: ^SourceStyleSchemeManager) -> ^cstring ---

    @(link_name = "gtk_source_style_scheme_manager_force_rescan")
    source_style_scheme_manager_force_rescan :: proc(manager: ^SourceStyleSchemeManager) ---

    @(link_name = "gtk_source_style_scheme_manager_get_scheme_ids")
    source_style_scheme_manager_get_scheme_ids :: proc(manager: ^SourceStyleSchemeManager) -> ^cstring ---

    @(link_name = "gtk_source_style_scheme_manager_get_scheme")
    source_style_scheme_manager_get_scheme :: proc(manager: ^SourceStyleSchemeManager, scheme_id: cstring) -> ^SourceStyleScheme ---

    @(link_name = "gtk_source_style_scheme_preview_get_type")
    source_style_scheme_preview_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_style_scheme_preview_new")
    source_style_scheme_preview_new :: proc(scheme: ^SourceStyleScheme) -> ^gtk.Widget ---

    @(link_name = "gtk_source_style_scheme_preview_get_scheme")
    source_style_scheme_preview_get_scheme :: proc(self: ^SourceStyleSchemePreview) -> ^SourceStyleScheme ---

    @(link_name = "gtk_source_style_scheme_preview_get_selected")
    source_style_scheme_preview_get_selected :: proc(self: ^SourceStyleSchemePreview) -> glib.boolean ---

    @(link_name = "gtk_source_style_scheme_preview_set_selected")
    source_style_scheme_preview_set_selected :: proc(self: ^SourceStyleSchemePreview, selected: glib.boolean) ---

    @(link_name = "gtk_source_tag_get_type")
    source_tag_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_tag_new")
    source_tag_new :: proc(name: cstring) -> ^gtk.TextTag ---

    @(link_name = "gtk_source_utils_unescape_search_text")
    source_utils_unescape_search_text :: proc(text: cstring) -> cstring ---

    @(link_name = "gtk_source_utils_escape_search_text")
    source_utils_escape_search_text :: proc(text: cstring) -> cstring ---

    @(link_name = "gtk_source_vim_im_context_get_type")
    source_vim_im_context_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_vim_im_context_new")
    source_vim_im_context_new :: proc() -> ^gtk.IMContext ---

    @(link_name = "gtk_source_vim_im_context_get_command_text")
    source_vim_im_context_get_command_text :: proc(self: ^SourceVimIMContext) -> cstring ---

    @(link_name = "gtk_source_vim_im_context_get_command_bar_text")
    source_vim_im_context_get_command_bar_text :: proc(self: ^SourceVimIMContext) -> cstring ---

    @(link_name = "gtk_source_vim_im_context_execute_command")
    source_vim_im_context_execute_command :: proc(self: ^SourceVimIMContext, command: cstring) ---

    @(link_name = "gtk_source_bracket_match_type_get_type")
    source_bracket_match_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_change_case_type_get_type")
    source_change_case_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_sort_flags_get_type")
    source_sort_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_completion_column_get_type")
    source_completion_column_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_completion_activation_get_type")
    source_completion_activation_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_newline_type_get_type")
    source_newline_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_compression_type_get_type")
    source_compression_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_file_loader_error_get_type")
    source_file_loader_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_file_saver_error_get_type")
    source_file_saver_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_file_saver_flags_get_type")
    source_file_saver_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_gutter_renderer_alignment_mode_get_type")
    source_gutter_renderer_alignment_mode_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_space_type_flags_get_type")
    source_space_type_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_space_location_flags_get_type")
    source_space_location_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_view_gutter_position_get_type")
    source_view_gutter_position_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_smart_home_end_type_get_type")
    source_smart_home_end_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_background_pattern_type_get_type")
    source_background_pattern_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_completion_words_get_type")
    source_completion_words_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_completion_words_new")
    source_completion_words_new :: proc(title: cstring) -> ^SourceCompletionWords ---

    @(link_name = "gtk_source_completion_words_register")
    source_completion_words_register :: proc(words: ^SourceCompletionWords, buffer: ^gtk.TextBuffer) ---

    @(link_name = "gtk_source_completion_words_unregister")
    source_completion_words_unregister :: proc(words: ^SourceCompletionWords, buffer: ^gtk.TextBuffer) ---

    @(link_name = "gtk_source_completion_snippets_get_type")
    source_completion_snippets_get_type :: proc() -> gobj.Type ---

    @(link_name = "gtk_source_completion_snippets_new")
    source_completion_snippets_new :: proc() -> ^SourceCompletionSnippets ---

}

foreign import gtksourceview_runic "system:gtksourceview-5"

