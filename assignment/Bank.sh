#!/usr/bin/bash

deposit=0
WithdrawalLimit=10000
while :; do
  echo "1. Deposit"
  echo "2. Withdraw"
  echo "3.Find Balance"
  echo "4.Exit"

  read -p "Enter your choice: " choice
  if [[ $choice -ge 5 ]]; then
    echo "Please enter a valid choice (1-4) "
  elif ! [[ -z $choice ]]; then
    echo "Strings are not allowed . Please enter a following Number "
  fi

  if [[ $choice -eq 1 ]]; then
    read -p "Enter Amount to be deposited: " amount
    ((deposit = deposit + amount))
    echo "Deposited Amount : ${amount}"
  elif [[ $choice -eq 2 ]]; then
    read -p "Enter amount to be withdrawn: " withdraw
    if [[ $withdraw -le $deposit ]]; then
      if [[ $withdraw -ge 10000 ]]; then
        echo "Withdrawal Transaction limit is : ${WithdrawalLimit}"
        echo "Withdrawal unsuccesfull"
        exit 1
      fi
      ((deposit = deposit - withdraw))
    else
      echo "Insufficient Balance "
      echo "Balance : ${deposit}"
    fi

    echo "Withdrawn amount Succesfully"
  elif [[ $choice -eq 3 ]]; then
    echo "Remaining balance : ${deposit}"
  elif [[ $choice -eq 4 ]]; then
    echo "Thank-You for using Bash Bank 🏦🏦💸 "
    exit 0
  fi
done
# $((2+2)) will work but $((var = kar+tar)) wont if they have value instead do ((var=kar+tar))
# TODO: Problem in strings recognization
