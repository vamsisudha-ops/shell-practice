#!/bin/bash 

NAME=INDIA
echo "My Country: $NAME"
echo "PID of SCRIPT-1: $$" # $$ to get PID of the instance
sh 26-script-2.sh

source ./26-script-2.sh
