#!/usr/bin/bash

# echo "You entered the argument : $1,$2,$3"
# # $1 -> represent 1st argument and so on...
#

# ls -lha $1

if [ -z "$1" ]; then
  echo "You need to provide an argument"
  exit 1
fi
  lines=$((ls -lh $1) | wc -l )
  echo "You have $(($lines-1)) objects in $1 directory"
# $(($lines-1))  not doing $ outside would just return number-1 ex : (300-1) doing $() would give the answer

# $# - Checks the number of arguments given
# if [ $# -ne 1]; then
#   echo "something"
# fi
