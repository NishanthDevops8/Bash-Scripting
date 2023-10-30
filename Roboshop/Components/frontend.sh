#!/bin/bash
echo " configuring frontend"
yum install nginx -y
User_id=$(id -u)
if [ $user_id -ne 0 ] ; then
echo -e "\e[32m Script is expected to execute by the root user\e[0m" 

fi