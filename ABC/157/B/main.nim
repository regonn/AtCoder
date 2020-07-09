import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let numbers = read().rep(3).rep(3)
var appears = @[@[false, false, false],@[false, false, false],@[false, false, false]]
let n = read()
for index in 0..(n-1):
  let b = read()
  for row in 0..2:
    for col in 0..2:
      if numbers[row][col] == b:
        appears[row][col] = true

var result = false

for index in 0..2:
    if appears[index][0] and appears[index][1] and appears[index][2]:
        result = true
    if appears[0][index] and appears[1][index] and appears[2][index]:
        result = true
    
if appears[0][0] and appears[1][1] and appears[2][2]:
  result = true
if appears[0][2] and appears[1][1] and appears[2][0]:
  result = true

if result:
  echo "Yes"
else:
  echo "No"