import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let n, m, c = read()
let b = read().rep(m)
let a = read().rep(m).rep(n)
var count = 0
for index_n in 0..(n-1):
    var sum = 0
    for index_m in 0..(m-1):
        sum += a[index_n][index_m] * b[index_m]
    if sum + c > 0:
        count += 1
echo count