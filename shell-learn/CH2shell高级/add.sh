
#!/bin/bash
#

function add
{
  echo "`expr $1 \+ $2`"
}

sum=`add $1 $2`

echo "$1 + $2 = $sum"


