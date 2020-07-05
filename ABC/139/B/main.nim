from strutils import split,parseInt
from math import ceil
 
let
  ab=stdin.readline.split
  a=ab[0].parseInt
  b=ab[1].parseInt

echo toInt(ceil((b-1)/(a-1)))