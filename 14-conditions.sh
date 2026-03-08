#!/bin/bash  # $? special variable which stores the output of previous command
USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "ERROR:: please run this script with root previlege"
fi 

dnf install mysql -y

if [ $? -ne 0 ]; then  #validating either MySQL is installed or not based on previous command output 
    echo "ERROR: Installing MYSQL is failure"
else
    echo "Installing MYSQL is SUCCESS"
fi 

