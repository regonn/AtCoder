import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let numbers = read().rep(3).rep(3)
var appears = @[@[false]]
let n = read()
for index in 0..(n-1):
    let b = read()

echo numbers
echo n

var result = false

for index_row in 0..2:
    if appears[index_row][0] and appears[index_row][1] and appears[index_row][2]:
        result = true