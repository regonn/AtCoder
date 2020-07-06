from strutils import split,parseInt
import sequtils
import math
 
let
  _ = stdin.readLine.parseInt
  v = stdin.readLine.split.map(parseInt)
var
  target = high(int)

for number in countup(min(v), max(v)):
  let sum = foldl(v, a + (b - number)^2, 0)

  if sum < target:
    target = sum

echo $target