#!/usr/bin/awk -f

BEGIN {FS = ":" ; sort -k $NF}

#total contributions
/Took/ {split($1,n," ") ; print n[1],$3+$4+$5 " (Total Contributions)"}

#between 10 and 200
$5 > 10 && $5 < 200 {print $1,$5}

#less than 300
$3+$4+$5/3<300 {print $1,$3+$4+$5/3, " (Contributed Less Than 300)"}



