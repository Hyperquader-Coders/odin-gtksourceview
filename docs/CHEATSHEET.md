# odin-gtksourceview cheat sheet

One screen per package: the calls a program makes, in the order it makes them, and the few
rules worth remembering. Every name here is a public declaration in [API.md](API.md), and
`make lint` fails when one is not. For the reasons behind a rule, follow the link to the README.

Conventions that hold everywhere: the library is the `gtksourceview` collection
(`-collection:gtksourceview=../odin-gtksourceview`), imported as `gsv`; the names are
GtkSourceView's without the `gtk_` prefix, so `gtk_source_buffer_new` is `gsv.source_buffer_new`;
GTK, GLib and GObject come from their own bindings and are never redeclared
([Use](../README.md#use)); a `SourceBuffer` is a `gtk.TextBuffer` and a `SourceView` a
`gtk.TextView`, so GTK's text calls take them with a cast; flag types are bit sets
([DECISIONS §4](DECISIONS.md#4-flag-enums-are-bit_sets-chosen-by-a-list)).

## gsv:buffer — a highlighted buffer and its view

```odin
import gsv "gtksourceview:gtksourceview"
import gtk "gtk4:gtk4"
import gobj "glib:gobject"

sbuf := gsv.source_buffer_new(nil)                      // nil: a fresh tag table. A plain GObject: the ref is yours
gsv.source_buffer_set_highlight_syntax(sbuf, true)
lm := gsv.source_language_manager_get_default()         // the managers are borrowed, never unref'd
lang := gsv.source_language_manager_guess_language(lm, "main.odin", nil)   // by file name; nil content type
if lang == nil { lang = gsv.source_language_manager_get_language(lm, "odin") }   // by id; nil when unknown
gsv.source_buffer_set_language(sbuf, lang)              // nil clears the highlighting
sm := gsv.source_style_scheme_manager_get_default()
if scheme := gsv.source_style_scheme_manager_get_scheme(sm, "Adwaita-dark"); scheme != nil {
	gsv.source_buffer_set_style_scheme(sbuf, scheme)    // nil when the scheme is not installed
}
gtk.text_buffer_set_text((^gtk.TextBuffer)(sbuf), "text", 4)   // a cast, not a wrapper

view := gsv.source_view_new_with_buffer(sbuf)           // a ^gtk.Widget; the view takes its own ref
gobj.object_unref((^gobj.Object)(sbuf))                 // drop yours now, or keep it to use past the view's life
sv := (^gsv.SourceView)(view)
gsv.source_view_set_show_line_numbers(sv, true)
gsv.source_view_set_auto_indent(sv, true)
gsv.source_view_set_highlight_current_line(sv, false)

ids := ([^]cstring)(gsv.source_language_manager_get_language_ids(lm))   // NULL-ended, the manager's: not freed
for i := 0; ids != nil && ids[i] != nil; i += 1 {
	_ = gsv.source_language_get_name(gsv.source_language_manager_get_language(lm, ids[i]))   // borrowed
}
```

| remember | |
|---|---|
| The returned buffer's ref is the caller's | the view adds one; release yours when the view holds it, or at teardown if the program keeps the pointer |
| Languages, schemes and the managers are borrowed | nothing from `get_language`, `get_scheme` or `get_default` is unref'd; check for nil before use |
| Strings come back as `cstring` | `get_name`, `get_id` and `get_category` are borrowed; `string(c)` copies nothing, so clone one that outlives the object |
| `set_language(nil)` is a valid call | it turns highlighting off for the buffer |

## gsv:search — find and replace in a buffer

```odin
import gsv "gtksourceview:gtksourceview"
import gtk "gtk4:gtk4"
import glib "glib:glib"
import gobj "glib:gobject"
import "base:runtime"

settings := gsv.source_search_settings_new()
gsv.source_search_settings_set_wrap_around(settings, true)
ctx := gsv.source_search_context_new(sbuf, settings)    // one per buffer and settings
gsv.source_search_context_set_highlight(ctx, true)
on_count := gobj.signal_connect(ctx, "notify::occurrences-count", proc "c" (obj: ^gobj.Object, pspec: glib.pointer, data: glib.pointer) {
	context = app_ctx                                   // C calls this: no Odin context until it is set
}, nil)

gsv.source_search_settings_set_search_text(settings, "needle")   // "" drops the highlight
gsv.source_search_settings_set_case_sensitive(settings, false)
gsv.source_search_settings_set_regex_enabled(settings, true)

ms, me: gtk.TextIter
wrapped: glib.boolean
found := gsv.source_search_context_forward(ctx, &from, &ms, &me, &wrapped)   // from the selection's end; backward, its start
if !bool(found) {
	if e := gsv.source_search_context_get_regex_error(ctx); e != nil { glib.error_free(e) }   // a copy: yours
}
n := gsv.source_search_context_get_occurrences_count(ctx)        // -1 while it still scans
pos := gsv.source_search_context_get_occurrence_position(ctx, &ms, &me)   // 1-based; 0 when not a match
if pos > 0 { gsv.source_search_context_replace(ctx, &ms, &me, "with", -1, nil) }   // -1: NUL-ended; error nil
replaced := gsv.source_search_context_replace_all(ctx, "with", -1, nil)

gobj.signal_handler_disconnect(ctx, on_count)           // before the last unref of ctx
gobj.object_unref((^gobj.Object)(ctx))
gobj.object_unref((^gobj.Object)(settings))
```

| remember | |
|---|---|
| A count of -1 means "still scanning" | the context counts in idle time; `notify::occurrences-count` says when it is known |
| `replace` only on a real match | check `get_occurrence_position(…) > 0` first; after `replace_all` the context rescans in idle time and its count reads 0 meanwhile |
| A bad regex is not an error return | `forward` simply finds nothing; `get_regex_error` holds why, and the copy is the caller's to free |
| Disconnect before the unref | the owner's ref keeps `ctx` alive for the disconnect; a handler left on a freed context is a use-after-free |
| Signal callbacks are `proc "c"` | set `context` on entry from one saved at startup, as in every GTK callback of the suite |

## gsv:mark — source marks and the gutter

```odin
import gsv "gtksourceview:gtksourceview"
import gtk "gtk4:gtk4"
import glib "glib:glib"

iter: gtk.TextIter
gtk.text_buffer_get_iter_at_line((^gtk.TextBuffer)(sbuf), &iter, 11)
mark := gsv.source_buffer_create_source_mark(sbuf, nil, "git-added", &iter)   // the buffer owns it; nil name: anonymous
at := gsv.source_buffer_get_source_marks_at_line(sbuf, 11, nil)   // ^glib.SList; nil category: any
if at != nil {
	first := (^gsv.SourceMark)(at.data)
	glib.slist_free(at)                                 // the list only: the marks are the buffer's
}
more := gsv.source_buffer_forward_iter_to_source_mark(sbuf, &iter, nil)   // iter moves to the next mark
next := gsv.source_mark_next(mark, nil)                 // chains without another search
category := gsv.source_mark_get_category(mark)          // borrowed
gsv.source_buffer_remove_source_marks(sbuf, &start, &end, nil)   // nil: every category

gutter := gsv.source_view_get_gutter(sv, .TEXT_WINDOW_LEFT)
gsv.source_gutter_insert(gutter, renderer, 0)           // position sorts: line numbers -30, marks -20, 0 beside the text
```

| remember | |
|---|---|
| Free the list from `get_source_marks_at_*`, never its marks | `glib.slist_free`; the buffer owns every mark until `remove_source_marks` |
| A category is a string the program picks | marks of one category share a style; nil means "any" in a query and "every" in a remove |
| A custom renderer subclasses `source_gutter_renderer_get_type()` | register it with `gobj.type_register_static_simple`, and check the class size before writing vfuncs: the table sits after `GtkWidgetClass`, and a size that differs means the layout changed ([kat800's gitgutter.odin](https://github.com/Hyperquader-Coders/kat800)) |
| `begin` runs once per snapshot, `snapshot_line` per line | tag lines with `source_gutter_lines_add_qclass` in `begin`, so `snapshot_line` only reads the tag |
