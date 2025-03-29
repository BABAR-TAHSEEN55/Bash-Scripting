#!/usr/bin/bash
# name="Zhou Mingruie"
echo "Hello,${name}! Welcome to Bash Scripting"

read -n "Enter FullName  : " fullName

# echo "Noice ${fullName} ! How are you "
# n is used for character limiting
read -p "Enter you FullName  :  " fullName
echo "Noice ! ${fullName}"
read -p "How old are you ?  " age
echo "I see !  You are ${age} years old "
