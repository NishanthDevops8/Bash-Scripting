#!/bin/bash
#here we will discuss the ifelse conditions
Action=$1

if [ "Action" == "start" ]; then
    echo "here we will start the first if "
    exit 0
elif [ "Action" == "stop" ]; then
    echo "here we will enter the first else if"
    exit 1
else [ "Action" == "go" ]; then
    echo "thos is the third else condition"
    exit 2
fi