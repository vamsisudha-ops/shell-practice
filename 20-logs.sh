#!/bin/bash 
USERID= $(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then 
    echo "ERROR:: please run this script with root previlege"
    exit 1 #failure is other than 0 
fi 
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/16-logs.log

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE  #TO APPEND THE ECHO STATEMENT IN LOGS FILE

if [ $USERID -ne 0 ]; then 
    echo "ERROR:: please run this script with root previlege"
    exit 1 #failure is other than 0 
fi 

VALIDATE(){ # funtions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 ... $R FAILURE $N" | tee -a $LOG_FILE
        exit 1
    else
        echo -e "Installing $2 ... $G SUCCESS $N" | tee -a $LOG_FILE
    fi 
}

dnf list installed mysql &>>$LOGS_FILE
#Install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOGS_FILE
    VALIDATE $? "MYSQL"
else 
    echo -e "MySQL already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi     

dnf list installed nginx &>>$LOGS_FILE
#Install if it is not found
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOGS_FILE
    VALIDATE $? "Nginx"
else 
    echo -e "Nginx already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi     

dnf list installed python3 &>>$LOGS_FILE
#Install if it is not found
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>$LOGS_FILE
    VALIDATE $? "python3"
else 
    echo -e "Python3 already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi     