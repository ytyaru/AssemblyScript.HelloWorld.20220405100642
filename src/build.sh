#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# tsソースからwasmファイルを出力する。
# CreatedAt: 2022-04-05
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"
	#asc -o hello.wat hello.ts
	asc hello.ts >| hello.wat 
	asc -o hello.wasm hello.ts
}
Run "$@"
