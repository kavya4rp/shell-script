#!/bin/bash

set -e

USERID=$(id -u)

if [ $USERID -ne 0 ]
then   
     echo "Please run this script with root acess."
     exit 1 # manually exit if error comes.
else
    echo "you are super user."
fi

dnf install mysql -y
dnf install git -y

echo "is script proceeding