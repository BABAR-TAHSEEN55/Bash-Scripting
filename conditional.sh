#!/usr/bin/bash

read -p "Enter number : " number
if [[ $number -eq 100 ]]; then
  echo "Yes it is Equal"
elif [[ $number -eq 200 ]]; then
  echo "nawh I'd win"
else
  echo "Shit off"
fi

Checking if a File Exists
if [[ -f ~/tech ]]; then
  echo "Yes file Exists"
else
  echo "Nawh It doesn't"
fi

command=/usr/bin/fastfetch
if [[ -f $command ]]; then
  echo "Yes File exists . Running it ... "
  fastfetch
else
  echo "$command doesn't exist. Installing it ... "
  sudo apt update && sudo apt upgrade
fi

# If checking for commands and not evaluating conditions there is not need to use []
# and [[]] is used for > < and && etc you can use normal ones [] with -eq , -ne etc
# command=/usr/bin/btop
command=fastfetch
if command -v $command; then
  echo "Yes File exists . Running it ... "
  fastfetch
else
  echo "$command doesn't exist. Installing it ... "
  sudo apt update && sudo apt upgrade
  sudo apt install $command
fi
