import strutils, sequtils, algorithm
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
    n = read()
    d = read().rep(n)
    sorted_d = sorted(d, system.cmp[int])

echo (sorted_d[n div 2] - sorted_d[(n div 2) - 1])
