#!/bin/bash
num=10

if [ "$num" -ge 5 ]; then
    if [ "$num" -le 15 ]; then
        echo "The number is within the range (5 to 15)."
    else
        echo "The number is above the range."
    fi
else
    echo "The number is below the range."
fi
