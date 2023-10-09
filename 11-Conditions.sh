#!/bin/bash
#Here we will discuss about the how conditions works

#use case one if valid conditon is hardcoded.
 temp=ant
case $temp in 
    ant)
    echo "Here we are checking the option a"
    ;;
    boy)
    echo "Here we are checking the option b"
    ;;
    cat)
    echo " Here we are checking the option c"
    ;;
esac