#!/bin/bash

set -e

failure(){
    echo "Failed at $1: $2"
}

trap 'failure ${LINENO} "$SBASH_COMMAND"' ERR

USERID=$(id -u) #ERR

if [ $USERID -ne 0 ]
then   
     echo "Please run this script with root acess."
     exit 1 # manually exit if error comes.
else
    echo "you are super user."
fi

dnf install mysqlll -y
dnf install git -y

echo "is script proceeding?"