import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let s: string = get()
var 
    current_count: int = 0
    max_count: int = 0


for index in 0..(len(s) - 1):
    if s[index] == 'R':
        current_count += 1
        if current_count > max_count:
            max_count = current_count
    else:
        current_count = 0

echo max_count