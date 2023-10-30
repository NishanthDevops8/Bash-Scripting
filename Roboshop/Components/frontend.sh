#!/bin/bash

User_id=$(id -u)
if [ $User_id -ne 0 ] ; then
echo -e "\e[31m Script is expected to execute by the root user\e[0m" 
exit 1
fi

yum install abc -y &>> /tmp/frontend.log
echo -e "\e[32mconfiguring frontend\e[0m"
echo -n "Installing the frontend"

if [ $? -eq 0 ] ; then
    echo -e "\e[32msuccess\e[0m"
else 
   echo  -e "\e[31mfailed\e[0m" 
fi