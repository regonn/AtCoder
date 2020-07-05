from strutils import split,parseInt
 
let
  ab=stdin.readline.split
  a=ab[0].parseInt
  b=ab[1].parseInt

if (a * b) mod 2 == 0:
  echo "Even"
else:
  echo "Odd"