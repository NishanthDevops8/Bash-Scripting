#!/bin/bash

User_id=$(id -u)
if [ $User_id -ne 0 ] ; then
echo -e "\e[31m Script is expected to execute by the root user\e[0m" 
exit 1
fi
echo " configuring frontend"
echo -n " Installing the frontend"
yum install nginx -y &>> /tmp/frontend.log

if [ $? -eq 0 ] ; then
 echo -e "\e[30m success \e[0m"
else 
 echo  -e "\e[29m  failed \e[0m" 
fi