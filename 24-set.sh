#!/bin/bash 
set -e   ## e-exit, immediately exit if error occurs

error(){
        echo "There is an error"
}

trap error ERR

echo "Hello .."
echo "Before error.."
sfdgsdfg    ## here shell understands there is an error and signal is ERR 
echo "After error.."
