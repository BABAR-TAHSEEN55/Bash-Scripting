#!/usr/bin/bash

read -p "Enter num : " num

result=0
while [[ $num -ne 0 ]]; do
  digit=$((num % 10))
  result=$((result * 10 + digit)) #Don't use $digit inside arithmetic cuz it is under operation
  num=$((num / 10))

done
echo "Reversed Number : ${result}"
