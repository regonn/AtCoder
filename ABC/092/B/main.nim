import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
    n = read()
    d = read()
    x = read()
    a = read().rep(n)

var ans = 0

for i in 0..(n-1):
    let temp = ((d - 1) div (a[i])) + 1
    ans += temp

echo ans + x