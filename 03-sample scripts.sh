#!/bin/bash

# Assign values to variables (no spaces around the = sign)
NAME="Alice"
GREETING="Hello, world!"
COUNT=50

# Access variables using the $ prefix
echo "$GREETING My name is $NAME."
echo "The count is $COUNT."

# Reassign a variable
COUNT=20
echo "The updated count is $COUNT."