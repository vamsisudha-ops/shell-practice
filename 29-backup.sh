#!/bin/bash 
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/16-logs.log  --> giving full path here 

mkdir -p $LOGS_FOLDER   # -p checks already directory is there or not, if it's not automatically it create a directory
echo "Script started executed at: $(date)" | tee -a $LOG_FILE  #TO APPEND THE ECHO STATEMENT IN LOGS FILE

if [ $USERID -ne 0 ]; then 
    echo "ERROR:: please run this script with root previlege"
    exit 1 #failure is other than 0 
fi 

USAGE(){
    echo -e "$R USAGE:: sudo sh 24-backup.sh <SOURCE_DIR> <DEST_DIR> <DAYS>[optional, default 14 days] $N"
    exit 1
}

if [ $# -lt 2 ]; then
    USAGE
fi 