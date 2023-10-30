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
status $?

echo -n "starting nginx"
systemctl enable nginx &>> /tmp/frontend.log
systemctl start nginx  &>> /tmp/frontend.log
status $?
echo -n "downloading the zip"
curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"
status $?
echo -n " cleanup the frontend"
cd /usr/share/nginx/html
rm -rf * &>> /tmp/frontend.log
status $?
echo -n "extracting frontend"
unzip /tmp/frontend.zip &>> /tmp/frontend.log
status $?
echo -n" sorting the frontend files"
mv frontend-main/*
mv static/ * 
rm -rf frontend-main README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
status $?
echo -n "starting frontend"
systemctl daemon-reload &>> /tmp/frontend.log
systemctl restart nginx  &>> /tmp/frontend.log
status $?