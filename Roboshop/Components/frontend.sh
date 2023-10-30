#!/bin/bash
logfile="/tmp/frontend.log"
component="frontend"
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
echo -e "\e[32mconfiguring ${component}\e[0m"
echo -n "Installing the ${component}"
yum install nginx -y &>> ${logfile}
status $?

echo -n "starting nginx"
systemctl enable nginx &>> ${logfile}
systemctl start nginx  &>> ${logfile}
status $?
echo -n "downloading the zip"
curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/${component}/archive/main.zip"
status $?
echo -n " cleanup the ${component}"
cd /usr/share/nginx/html
rm -rf * &>> ${logfile}
status $?
echo -n "extracting ${component}"
unzip /tmp/${component}.zip &>> ${logfile}
status $?
echo -n" sorting the ${component} files"
mv frontend-main/* .
mv static/* . 
rm -rf ${component}-main README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
status $?
echo -n "starting ${component}"
systemctl daemon-reload &>> ${logfile}
systemctl restart nginx  &>> ${logfile}
status $?