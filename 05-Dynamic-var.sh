#!/bin/bash
#when we declare the dynamic values we should enclose them in paranthesis()

val="$(date +%F)"
echo "todays date is $val"

echo " number of loggin sessiona $(who | wc -l)"
