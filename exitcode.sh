#!/usr/bin/bash

read -p "Enter Package name : " package
sudo apt install $package
if [ $? -eq 0 ]; then
  echo "Exit Code of Previous command :$package ::$?"
  echo "Package was Installed Successfully"
  echo "$package command is availabe now. Running it ....."
else
  echo "Exit Code of Previous command :$package ::$?"
  echo "Package was failed to Installed"
fi
