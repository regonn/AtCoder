import strutils, sequtils
import math 
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
    a = read()
    b = read()
    result = $a & $b
    result_number = parseInt(result)
var
    return_value = false

for index in 1..100101:
    if index ^ 2 > result_number:
        break
    elif index ^ 2 == result_number:
        return_value = true
        break

if return_value:
    echo "Yes"
else:
    echo "No"
