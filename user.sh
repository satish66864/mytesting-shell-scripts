#!/bin/bash
echo " creating new user.."
read -p " Please Enter The Username: " USER
useradd -m $USER
echo " creating new user with name $USER...."
cat /etc/passwd | grep -i $USER
