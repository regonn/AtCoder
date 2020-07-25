import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
    _, M, X = read()
    a = read().rep(M)
    smaller = len(a.filterIt(it < X))
    larger = len(a.filterIt(it > X))

echo min(smaller, larger)