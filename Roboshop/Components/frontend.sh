#!/bin/bash

User_id=$(id -u)
if [ $User_id -ne 0 ] ; then
echo -e "\e[32m Script is expected to execute by the root user\e[0m" 
exit 1
fi
echo " configuring frontend"
yum install nginx -y &>> /tmp/frontend.log