#!/bin/bash 
USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "ERROR:: please run this script with root previlege"
    exit 1 #failure is other than 0 
fi 

VALIDATE(){ # funtions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then  #$1 is argument in the script
        echo "ERROR: Installing $2 is failure"
        exit 1
    else
        echo "Installing $2 is SUCCESS"
    fi 
}

dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install nginx -y 
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "python3"