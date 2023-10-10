#!/bin/bash

#here we will discuss how we can comment in the script.
# We can comment  the selected line by using cltr+backslash
#or we can use <<comment in the starting and COMMENT at the end
<<COMMENT
apple = 100
boy = 1000
echo " we have fruits in our shop"
echo " we mostly have $apple"
COMMENT
echo " and they are eaten by my $boy"