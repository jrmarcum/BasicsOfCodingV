# Basics of Coding V — Project Context

## Purpose

Multi-language comparative study of programming syntax, language simplicity,
lines of code required, and compile/run performance. V is one of several
languages implemented against the same set of example programs, enabling
direct side-by-side comparison.

## Licensing Summary

This project contains two tiers of content with different licenses:

- **CC BY 3.0** — lesson files and code examples adapted from
  "Basics of Coding Go" by Jon Marcum, which was itself adapted from
  "Go by Example" by Mark McGranaghan
  (https://github.com/mmcgrana/gobyexample).
  License: http://creativecommons.org/licenses/by/3.0/

- **CC0 1.0** — original contributions by Jon Marcum (project structure,
  README, comparative-study additions, and any lessons not derived from
  Go by Example). See LICENSE.

Attribution for derived content is provided centrally in README.md and
NOTICE — do **not** add a per-file attribution footer to lesson `.md` files.

## Upstream Reference

BasicsOfCodingGo is included as a git submodule at `upstream/basicsofcodinggo`.
Read each lesson from `upstream/basicsofcodinggo/##_topic-name/` as the
source of truth for program logic and expected output.

## Project Structure

```
BasicsOfCodingV/
├── CLAUDE.md          — this file; canonical project context for Claude sessions
├── LICENSE            — CC0 (applies to Jon Marcum's original contributions)
├── NOTICE             — attribution notice for CC BY 3.0 derived content
├── README.md          — project overview, attribution section, license table
├── upstream/
│   └── basicsofcodinggo/  — git submodule: BasicsOfCodingGo reference
└── ##_topic-name/
    ├── topic-name.v   — runnable V source for the lesson
    └── topic-name.md  — lesson explanation (run command + expected output)
```

Lessons are numbered with a two-digit prefix (e.g., `01_hello-world`),
mirroring BasicsOfCodingGo exactly: same lesson numbers, same folder names.

## .gitignore

The project `.gitignore` covers:

```gitignore
# Compiled binaries produced by v build
*.exe
*.out
command-line-arguments
command-line-flags
command-line-subcommands

# Temporary files created by lesson examples (lessons 58-60)
tmp/

# V compiler artifacts
.v_cache/
```

- `*.exe` / `*.out` are produced when a reader runs `v build` on lessons.
- `tmp/` is the working directory expected by lessons 58 (reading-files),
  59 (writing-files), and 60 (line-filters). It must exist at runtime but
  should not be committed.
- `.v_cache/` is the V compiler's build cache.

## Language Notes for Future Claude Sessions

- V uses `fn` instead of `func`, no `package main` declaration needed.
- Built-in `println()` and `print()` replace `fmt.Println` / `fmt.Print`.
- String interpolation: `'text ${variable}'` (double-quotes also work).
- Mutable variables require `mut`: `mut x := 5`.
- `match` is V's equivalent of Go's `switch`; folders keep Go's name
  (`07_switch/switch.v`) but the V code uses `match`.
- Goroutines use the same `go fn()` syntax as Go.
- Channels: `ch := chan T{}` (unbuffered) or `chan T{cap: n}` (buffered).
- Error handling: `fn f() !T` returns a Result; callers use `or { }`.
- `defer { ... }` (block syntax) instead of Go's `defer fn() { ... }()`.
- V `recover` semantics differ from Go; the `38_recover` lesson notes this
  and implements the closest V idiom using `or { }` error handling.
- Lessons 58–60 use `./tmp/` for file I/O; `tmp/` is gitignored and must
  exist at runtime.
- The root `LICENSE` file is CC0 but does **not** cover the derived content.
  Always refer to NOTICE and README for the full picture.
