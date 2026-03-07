#!/bin/bash
echo "all variables passed to the script: $@"
echo "all variables passed to the script: $*"
echo "name of the script: $0"
echo "current directory: $PWD"
echo "who is running this: $USER"
echo "Home directory of user: $HOME"
echo "PID of this script: $$"
sleep 50 &
echo "PID of the last command in background is: $!"

