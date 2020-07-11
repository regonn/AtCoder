import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
  n, k = read()
  x = read().rep(n)

var sum = 0

for index in 0..(n - 1):
  if x[index] > k - x[index]:
    sum = sum + 2 * (k - x[index])
  else:
    sum = sum + 2 * x[index]

echo $sum