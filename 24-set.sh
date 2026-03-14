#!/bin/bash 
set -e   ## e-exit, immediately exit if error occurs

#error(){
      #  echo "There is an error $LINENO, Command is: $BASH_COMMAND"
#}

trap 'echo "There is an error $LINENO, Command is: $BASH_COMMAND"' ERR

echo "Hello .."
echo "Before error.."
sfdgsdfg    ## here shell understands there is an error and signal is ERR 
echo "After error.."
