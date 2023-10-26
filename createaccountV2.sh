#!/bin/bash

# Code inspected by: [Nikhil Cherukuri]
# Date of inspection: [26/10/2023]
# Total number of errors found: 2
# Categories of errors: Command syntax and logic
# Description of errors:
#   1. Invalid command 'User@dd /bin/bash $user'
#   2. Missing usermod command to set the user's password
# Solutions:
#   1. Replace 'User@dd /bin/bash $user' with 'sudo useradd $user'.
#   2. Add 'sudo usermod -p $pwrd $user' to set the user's password.

read -p "Enter Username: " user
read -p "Enter Password: " pwrd

# Create the user account with sudo
sudo useradd $user

# Set the user's password with sudo
sudo usermod -p $pwrd $user
