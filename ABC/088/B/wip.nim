import strutils, sequtils, lists
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
  n = read()

var
  a : SinglyLinkedRing[int] = initSinglyLinkedRing[int]()
  alice: seq[int]
  bob: seq[int]

for _ in 0..(n-1):
  a.append(read())

echo a

# while len(a) > 0:
#   let max_value = max(a)
#   a.remove(a.find(max_value))
#   if len(alice) == len(bob):
