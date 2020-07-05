from strutils import split,parseInt
import sequtils
 
let
  n = stdin.readLine.parseInt
  v = stdin.readLine.split.map(parseInt)

echo n
echo v