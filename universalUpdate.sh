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
logFile=/var/log/updater.log
errorLogFile=/var/log/error.log
#/etc/os-release shows the Config of distro
if grep -q "Arch" $release_os; then
  if [ $? -ne 0 ]; then
    echo "For More details look into ${errorLogFile}"
  fi
  #This belong to Arch based btw
  sudo pacman -Syu 1>>$logFile 2>>$errorLogFile
fi
if grep -q "Ubuntu" $release_os || grep -q "Debian" $release_os; then
  if [ $? -ne 0 ]; then
    echo "For More details look into ${errorLogFile}"
  fi
  (sudo apt update -y && sudo apt upgrade -y) >>$logFile 2>>$errorLogFile
fi
# -q means quiet mode ( We don't print anything)
