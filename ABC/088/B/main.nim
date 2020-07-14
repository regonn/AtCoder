import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
  n = read()

var
  a = read().rep(n)
  alice: seq[int]
  bob: seq[int]

while len(a) > 0:
  let max_value = max(a)
  a.del(find(a, max_value))
  if len(alice) == len(bob):
    alice.add(max_value)
  else:
    bob.add(max_value)

echo alice.foldl(a + b) - bob.foldl(a + b)