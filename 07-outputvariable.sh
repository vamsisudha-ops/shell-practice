#!/bin/bash
#DATE=$(date)
START-TIME=$(date +%s)
sleep 10
END-TIME=$(date +%s)
TOTAL-TIME=$(($END-TIME-$START-TIME))
echo "script executed in: $TOTAL-TIME"
