import strutils, sequtils, math
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
        counts: seq
        numbers: seq = x

    for index in 0..(n-1):
        let number = x[index]
        let lesser_numbers = numbers.filter_it( it < number )
        numbers.del(find(numbers, number))
        if lesser_numbers.len() == 0:
            counts.add(0)
        else:
            counts.add(fac(numbers.len()) * lesser_numbers.len())
    return counts.foldl(a + b) + 1

echo abs(cal_lesser_count(p) - cal_lesser_count(q))