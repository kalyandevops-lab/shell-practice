#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Errror:: Please run this script with root access"
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MYSQL is not installed ... going to install it"
    dnf install mysql -y

    if [ $? -eq 0 ]
    then
        echo "Installing mysql is ... SUCCESS"
    else
        echo "Installing mysql is ... FAILURE"
        exit 1
    fi             
else
    echo "MYSQL is already installed ...nothing to do"
fi        
# dnf install mysql -y

# if [ $? -eq 0 ]
# then
#     echo "Installing mysql is ... SUCCESS"
# else
#     echo "Installing mysql is ... FAILURE"
#     exit 1
# fi         