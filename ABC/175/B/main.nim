import strutils, sequtils, math
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
  n = read()
  l = read().rep(n)

var count = 0

for i in 0..(n - 3):
  for j in (i + 1)..(n - 2):
    for k in (j + 1)..(n - 1):
      if l[i] != l[j] and l[i] != l[k] and l[j] != l[k]:
        if (l[i] > l[j] and l[i] > l[k] and l[i] < l[j] + l[k]) or (l[j] > l[i] and l[j] > l[k] and l[j] < l[i] + l[k]) or (l[k] > l[j] and l[k] > l[i] and l[k] < l[j] + l[i]):
          count += 1

echo count