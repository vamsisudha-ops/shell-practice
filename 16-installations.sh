#!/bin/bash 
USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "ERROR:: please run this script with root previlege"
    exit 1 #failure is other than 0 
fi 

dnf install mysql -y

if [ $? -ne 0 ]; then     #validating either MySQL is installed or not based on previous command output 
    echo "ERROR: Installing MYSQL is failure"
    exit 1
else
    echo "Installing MYSQL is SUCCESS"
fi 

dnf install nginx -y

if [ $? -ne 0 ]; then    #validating either Nginx is installed or not based on previous command output 
    echo "ERROR: Installing Nginx is failure"
    exit 1
else
    echo "Installing Nginx is SUCCESS"
fi 

dnf install python3 -y

if [ $? -ne 0 ]; then    #validating either mongodb is installed or not based on previous command output 
    echo "ERROR: Installing python3 is failure"
    exit 1
else
    echo "Installing python3 is SUCCESS"
fi 