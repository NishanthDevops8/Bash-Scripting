#!/bin/bash
echo "This is the frontend"
USER_ID=$(id -u)

if [ $USER_ID -ne 0 ] ; then
 echo -e "\e[32mScript need to execute by the sudo user\e[0m"
 exit 1
fi
yum install nginx -y &>>../tmp/frontend.config

if [ $? -eq 0 ] ; then
   echo -e "\e[32m Success \e[0m"
else
    echo -e "\e[30m Failed \e[0m"

fi

