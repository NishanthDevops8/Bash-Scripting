#!/bin/bash
#Here we will discuss about the how conditions works

#use case one if valid conditon is hardcoded.
 temp=$1
case $temp in 
    ant)
    echo -e "\e[34mHere we are checking the option a\e[0m]"
    ;;
    boy)
    echo "Here we are checking the option b"
    ;;
    cat)
    echo " Here we are checking the option c"
    ;;
    *)
    echo "invalid option"
esac