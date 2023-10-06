#!/bin/bash
#Here we will discuss about the special variables.
#special variables give special properties to your variable.

#These are few special variable $0 , $1 --- $9

#$1 is the first argument till $9 we can give the 9 arguments and for 10th argument it will be override by the
#$1 argument
# and this arguments can be given by while running the script
a=100
b=1000
c= " we have used 3 variables"
echo " value of a is $a"
echo " value of b is $b"
echo " value of c is $c"
echo "this is the name of the script $0"
echo "Father of the nation $1 and his birthday is on october 2nd"
echo $*
echo $#
echo $$

