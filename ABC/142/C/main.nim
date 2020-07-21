import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
    n = read()
    a = read().rep(n)
var
    rev = a

for index in 0..(n-1):
    rev[a[index] - 1]= index+1;

for index in 0..(n-1):
    stdout.write (rev[index])
    if index != (n-1):
        stdout.write " "
    else:
        echo ""