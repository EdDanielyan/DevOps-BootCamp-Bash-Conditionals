#!/bin/bash

#to convert centigrade, fahrenheit and kelvin

#checking if any temperature scale is specified
c=$(echo $1 | grep -c "c")
f=$(echo $1 | grep -c "f")
k=$(echo $1 | grep -c "k")


#doing calculations
if (( $c == "1" ));then
   c=$(echo $1 | sed 's/c//g');
   f=$(echo "scale=1;($c*(9/5))+32" | bc )
   k=$(echo "scale=2;$c+273"|bc )
   echo -e " $k k";
elif (( $f == "1" ));then
   f=$(echo $1 | sed 's/f//g');
   c=$(echo "scale=1;(($f-32)*5)/9" | bc )
   k=$(echo "scale=2;$c+273"|bc )
   echo -e "$c c & $k k\e[0m\n"
elif (( $k == "1" ));then
   k=$(echo $1 | sed 's/k//g');
   c=$(echo "scale=1;$k-273" | bc )
   f=$(echo "scale=1;($c*(9/5))+32" | bc )
   echo -e "$c c ";
else
   c=$(echo "scale=1;($1-32)*(5/9)" | bc )
#   f=$(echo "scale=1;($1*(9/5))+32" | bc )
   echo -e "$c c "
fi
