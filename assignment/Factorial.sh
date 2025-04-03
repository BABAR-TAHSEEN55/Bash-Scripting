#!/usr/bin/bash

read -p "Enter the Number " num

i=1
result=1
while [[ i -le $num ]]; do
  ((result *= i))
  ((i++))
done
echo "Factorial of ${num}! :  ${result}"
