# Decisions — odin-gtksourceview

Settled choices. An entry that stops being true is rewritten, not appended to.

## 1. Generated, not hand-written

The bindings are generated with runic from the headers Amber ships, so a library bump is a
regeneration. Hand fixes are the exception and are tracked in [PATCHED.md](PATCHED.md).

## 2. Generated against amber-gtk4's staged GTK

`make generate` reads GTK's headers from `GTK_STAGE` (`../amber-gtk4/build/gtk/stage`), the tree
odin-gtk4 is generated from, not from the distro's libgtk-4-dev (4.14). The `gtk.` types this
binding names must be the ones `gtk4:gtk4` declares, and a different GTK version would
change them. Every GTK, GDK and GSK type is imported from `gtk4:gtk4`; none is declared here.

## 3. The `Source` word stays in names

Types, procedures and constants keep the module word: `SourceView`, `source_view_new`,
`SOURCE_TYPE_VIEW`. Without it `View`, `Map`, `Mark`, `Style` and `Tag` would read as GTK's own
when a program imports both packages, and runic's type trimming (`g`, `G`, `tk`) cannot be
told to stop before `GtkSource`: it would turn `GtkSourceGutter` into `utter`.

## 4. Flag enums are bit_sets, chosen by a list

C flag types are `bit_set[FooBit; u32]`, so callers write `{.SOURCE_SPACE_TYPE_SPACE,
.SOURCE_SPACE_TYPE_TAB}`. `postprocess.sh` rewrites the enums runic emits; the members of `FooBit`
are bit indices, and the type keeps the C size (4 bytes) and bits, so procedures take and return
it by value unchanged. A zero member is the constant `Foo{}` under its C name and a composite
(`SOURCE_SPACE_TYPE_ALL`) a constant set. The list is the `<bitfield>` entries of GtkSource-5.gir
under the names this binding gives them: `SourceFileSaverFlags`, `SourceSortFlags`,
`SourceSpaceLocationFlags` and `SourceSpaceTypeFlags`. A new GFlags type in a header bump is added
to the list by hand; generation fails if a listed enum is missing, negative or has no single-bit
member. A value rule cannot tell them from plain enums: `SourceCompletionActivation` is 0, 1, 2
and an enum.

## 5. Parameters are single objects unless declared

runic 0.8 writes `[^]T` for a pointer parameter whose C name ends in `s` (`settings`, `lines`),
however many elements it holds, which lets a caller index past one element, and drops a trailing
`va_list`, binding the procedure as `#c_vararg ..any`. Amber's runic fork (branch `amber-patched`)
has `parameters: declared`: with it every procedure parameter is `^T` (`T **` is `^^T`) unless
`arrays:` in the package's `rune.yml` lists it, chosen against the C headers, and a va_list
procedure is skipped. Struct members, variables and typedefs keep runic's name guess, and the
parameters of function-pointer types are plain `^T`: a limit of the fork, true in every binding.
Where a binding needs it, the `param_rules` table in `postprocess.sh` restores the `[^]` for
those parameters' real arrays, rewrites single-object struct members and corrects `T ***` outs;
a row that matches nothing fails the build. Rejected: rewriting the output in `postprocess.sh`,
which had to be told each parameter, matched `va_list` procedures by name pattern (it deleted
`list_store_insert_with_values` for containing `_va`) and was a second place to keep in step
with the headers. `scripts/check-generated.sh` stays as the guard that any regeneration, with
any runic, keeps the listed parameters right.
