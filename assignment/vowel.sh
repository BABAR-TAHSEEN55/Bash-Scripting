#!/usr/bin/bash

# echo "${#var}" # This gives the length string

# i=0
# while [ $i -lt ${#var} ]; do
#   char="${var:$i:1}"
#   echo "Character at $i : ${char}"
#   ((i++))
# done

i=0
while [[ $i -lt ${#var} ]]; do
  char=${var:$i:1}
  if [ $char = 'a' ] || [ $char = 'e' ] || [ $char = 'i' ] || [ $char = 'o' ] || [ $char = 'u' ]; then
    echo "$char is a Vowel"
  else
    echo "$char is not a Vowel"
  fi
  ((i++))
done
## In Strings you have to use normal comparison Operators
