#!/usr/bin/bash

read -p "Enter a number " num
echo "Input Number : $num"
count=0
read -p "Enter the number till which you want tables to be printed " fixed
# while [[ $count -le 10 ]]; do
# When you use [[]] you can't use operators like < > = so you have to use (( )) which means arithmetic context
while (($count <= $fixed)); do
  echo "${num} x ${count} = $((num * count))"
  ((count++))
done
