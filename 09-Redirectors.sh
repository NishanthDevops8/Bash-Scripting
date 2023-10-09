#!/bin/bash
#Redirectors

#Input Redirectors (Takes Input from the file)

#Output Redirectors (Routing output to a file)

# > override with latest output , >> append the output with previous output.
#Outputs

1) Standard Output    > or >> or 1>
2) Standard Error    2> or 2>>
3) Standard Output and Standard Error &> or &>>

ls -ltr > output.txt #Redirects the output to output.txt
ls -ltr >> output.txt #Redirects and appends the output to output.txt
ls -ltr 2> output.tct #Redirects the error only to output.txt
ls -ltr &> output.txt #Redirects the output or error to output.txt