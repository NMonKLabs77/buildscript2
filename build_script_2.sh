#!/bin/bash

# Menu to choose either SSH or SCP Author: Nehemiah Monrose Date: 6/9/2023

echo "Menu:"
echo "1. ssh"
echo "2. scp"

# Prompt user to make a choice(one or two)

read -p "Select and option from menu(Note: one for ssh or two for ssh): " choice

# Using an if else statement to do something based on choice


#SSH

if [ "$choice -eq  1 ]; then
  read -p "Username: " ssh_username
  read -p "IP Address: " ssh_ip
  ssh "$ssh_username@ssh_ip"

# SCP

elif [ "$choice" -eq  2 ]; then
  read -p "Username: " scp_username
  read -p "IP Address: " scp_ip
  read -p "Enter 'rtl' for remote to local or 'ltr' for local to remote please: " scp_mode

# Prompt user for source and destination files
  if [ $scp_mode" = "rtl" ]; then
    read -p "Enter the source file path: " src_file
    read -p "Enter the destination file path: " dest_file

  elif [ "$scp_mode" = "ltr" ]; then
    read -p "Enter source file path: " src_file
    read _p "Enter destination file path: " dest_file

  else
    echo "Invalid input use 'rtl" for remote to local or 'ltr' for local to remote
    exit 1
    fi


  #SCP function if remote to local do this else do this

  if [ "$scp_mode" = "rtl" ]; then
    scp "$scp_username@$scp_ip:$src_file" "$dest_file"

  elif [ "$scp_mode" = "ltr" ]; then
   scp "$src_file" "scp_mode@scp_ip:$dest_file"

  fi 
  
else
  echo "Invalid input"



fi
