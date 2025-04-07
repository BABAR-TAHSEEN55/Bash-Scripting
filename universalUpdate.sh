#!/usr/bin/bash
# 1st way
# if [ -d /etc/pacman.d ];then
#   # This belong to Arch based btw
#   sudo pacman -Syu
# fi 
# if [ -d /etc/apt ]; then
#   sudo apt update && sudo apt upgrade 
# fi

# 2nd way
release_os=/etc/os-release
#/etc/os-release shows the Config of distro
if grep -q "Arch" $release_os ;then
  # This belong to Arch based btw
  sudo pacman -Syu
fi 
if grep -q "Ubuntu" $release_os || grep -q "Debian" $release_os ;then
  sudo apt update && sudo apt upgrade 
fi
# -q means quiet mode ( We don't print anything)
