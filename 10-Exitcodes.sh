#!/bin/bash

#Each and every action in linux will have a exit code
# 0 to 255 is the range of codes
# Among all , 0 represents action completed successfull.
# Anything in between 1 and 255 represents either partial success , partial failure , complete failure

#This exit codes plays a keyrole in debugging the errors in big scripts.
# Ex. If you are having a big script and if your script fails and it's readlly challenging to figure out the mistake as it makes us to watch over entire code.
#Instead we can use exit codes everywhere to find out where our scripts fails.