#!/bin/bash

# everything in shell is considered as string

NUMBER1=100
NUMBER2=300
SUM=$(($NUMBER1+$NUMBER2))
echo "SUM is: ${SUM}"
NAME=Devops
SUM=$($NUMBER1+$NUMBER2+$NAME)
echo "SUM IS: ${SUM}"
