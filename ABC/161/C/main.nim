import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt

let
    n, k = read()
    n_mod_k = n mod k

echo min(n_mod_k, k - n_mod_k)