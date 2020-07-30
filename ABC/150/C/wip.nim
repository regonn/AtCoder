import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
    n = read()
    p = read().rep(n)
    q = read().rep(n)

proc cal_lesser_count(x: seq): int =
    var 
        counts: seq[int]
        numbers: seq[int]

    for index in 0..(n-1):
        counts.add(index)    
    return counts[0]

echo cal_lesser_count(p)