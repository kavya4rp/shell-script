#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G source directory exists $N"
else    
    echo -e "$R please make sure $SOURCE_DIRECTORY exists $N"
    exit1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line
do 
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES