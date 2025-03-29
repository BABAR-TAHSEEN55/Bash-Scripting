#!/usr/bin/bash
read -p "Enter your age : " age

if [[ ${age} -gt 1 && ${age} -lt 15 ]]; then
  echo "You are Minor! Go Watch CoComelon"
elif [[ ${age} -gt 17 ]]; then
  echo "You are Adult ! Boi"
else
  echo "Invalid Age"
fi

read -p "Enter the Number : " n
if [[ $n -gt 10 && $n -lt 20 ]]; then
  echo "Number is in b/w 10 & 20"
elif [[ $n -gt 21 && $n -lt 40 ]]; then
  echo "Number is in b/w 21 & 40"
elif [[ $n -gt 41 && $n -lt 100 ]]; then
  echo "Number is in b/w 41 & 100"
else
  echo "Invalid Number or Negative number"
fi
