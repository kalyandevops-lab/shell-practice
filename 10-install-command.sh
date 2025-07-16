#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Errror:: Please run this script with root access"
else
    echo "You are running with root access"
fi        

dnf install mysql -y