import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
    n = read()
    a = read().rep(n)
var
    temp_a = a

for index in 1..n:
    let current_min_value = min(temp_a)
    let current_min_value_index = a.find(current_min_value)
    temp_a.del(temp_a.find(current_min_value))
    stdout.write (current_min_value_index + 1)
    if index != n:
        stdout.write " "
    else:
        echo ""