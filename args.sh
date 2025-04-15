#!/usr/bin/bash
#
## echo "You entered the argument : $1,$2,$3"
## # $1 -> represent 1st argument and so on...
##
#
## ls -lha $1
#
#if [ -z "$1" ]; then
#  echo "You need to provide an argument"
#  exit 1
#fi
#  lines=$((ls -lh $1) | wc -l )
#  echo "You have $(($lines-1)) objects in $1 directory"
## $(($lines-1))  not doing $ outside would just return number-1 ex : (300-1) doing $() would give the answer
#
## $# - Checks the number of arguments given
## if [ $# -ne 1]; then
##   echo "something"
## fi
#TODO:: Check for Global and Local Scope variables
number_finder() {
  local var=$1 # Local means it has scope variables whereas declaring normal variables has global scope
  var=$2
  if [ -z $var ]; then
    echo "Empty"
  else
    echo "Not Empty"
  fi
}
number_finder hola

# number_finder=$1 echo "You entered the following number : $number_finder"

check() {
  local sar="HOla"
  echo $sar
}
check
#Local varibales are not accessible outside the scope
echo "This doesn't prints anything : $sar"
