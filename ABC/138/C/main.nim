import strutils, sequtils, algorithm
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
proc read_float: float = get().parseFloat
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
    n = read()
    v = read_float().rep(n)
var
    sorted_v : seq[float] = sorted(v, system.cmp[float], SortOrder.Descending)

for _ in 0..(n-2):
    let last_item1 = sorted_v.pop();
    let last_item2 = sorted_v.pop();
    sorted_v.add((last_item1 + last_item2) / 2)

echo sorted_v.pop()

