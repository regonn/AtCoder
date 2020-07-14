import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let n = read()

var return_value = 1
var max_divide_count = 0

for number in 1..n:
    var divide_count = 0
    var divided_number = number
    while divided_number mod 2 == 0:
        divide_count += 1
        divided_number = divided_number div 2
    if divide_count > max_divide_count:
        max_divide_count = divide_count
        return_value = number

echo return_value
