#!/usr/bin env bash
###################
#Checking for a  particular USER is present or not?
#################
echo -e "enter the username:\c"
read username

 grep -qw "${username}" /etc/passwd

if [ $? -eq 0 ]
then
 echo "${username} user is present"
 else
  # Create the user if they don't exist
  echo "User $username does not exist. Creating..."
  useradd -m "$username"
  echo "User $username has been created."
fi
