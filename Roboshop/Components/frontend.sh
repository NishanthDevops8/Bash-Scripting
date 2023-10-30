#!/bin/bash

User_id=$(id -u)
if [ $User_id -ne 0 ] ; then
echo -e "\e[32m Script is expected to execute by the root user\e[0m" 
exit 1
fi
echo " configuring frontend"
echo \n" Installing the frontend"
yum install nginx -y &>> /tmp/frontend.log

if [ $? eq 0 ] ; then
 echo " success"
else 
 echo "failed" 
fi