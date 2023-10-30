#!/bin/bash

status(){

    if [ $1 -eq 0 ]; then
    echo -e "\e[32msuccess\e[0m"
else 
   echo  -e "\e[31mfailed\e[0m" 
fi
}
User_id=$(id -u)
if [ $User_id -ne 0 ] ; then
echo -e "\e[31m Script is expected to execute by the root user\e[0m" 
exit 1
fi
echo -e "\e[32mconfiguring frontend\e[0m"
echo -n "Installing the frontend"
yum install nginx -y &>> /tmp/frontend.log


echo -n "starting nginx"

systemctl enable nginx &>> /tmp/frontend.log
systemctl start nginx  &>> /tmp/frontend.log
status $?