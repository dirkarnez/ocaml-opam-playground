@echo off

:: Prefix of the current opam switch
set "OPAM_SWITCH_PREFIX=%LOCALAPPDATA%\opam\default"
:: Updated by package ocaml-base-compiler
set "CAML_LD_LIBRARY_PATH=%LOCALAPPDATA%\opam\default\lib\stublibs"
:: Updated by package ocaml
set "CAML_LD_LIBRARY_PATH=%LOCALAPPDATA%/opam/default/lib/ocaml/stublibs;%LOCALAPPDATA%/opam/default/lib/ocaml"
:: Updated by package ocaml
set "CAML_LD_LIBRARY_PATH=%LOCALAPPDATA%\opam\default\lib/stublibs;%CAML_LD_LIBRARY_PATH%"
:: Updated by package ocaml
set "OCAML_TOPLEVEL_PATH=%LOCALAPPDATA%\opam\default\lib\toplevel"
:: Updated by package mingw-w64-shims
set "PATH=%LOCALAPPDATA%\opam\.cygwin\root\usr\x86_64-w64-mingw32\sys-root\mingw\bin;%PATH%"
:: Updated by package mingw-w64-shims
set "PATH=;%PATH%"
:: Current opam switch man dir
set "MANPATH=%MANPATH%:$LOCALAPPDATA/opam/default/man"
:: Binary dir for opam switch default
set "PATH=%LOCALAPPDATA%\opam\default\bin;%PATH%"
set "PATH=%LOCALAPPDATA%\opam\.cygwin\root\bin;%PATH%"

ocamlopt -o your_program main.ml
pause
