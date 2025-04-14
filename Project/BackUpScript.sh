#!/usr/bin/bash

# if [ -z "$1] && [ -z $2" ]; then
#   echo "Usuage : <Source directory> and <Target directory"
# fi
# Checking if user has provided with two arguments
if [ $# -ne 2 ]; then
  echo "Usage : backup.sh <Source direcotory> and <Target Directory> "
  echo "Please try again"
  exit 1
fi
# Checking if rsync is installed
#command > all.txt 2>&1 -> Redirects both to all.txt or you can directly use &>

if ! command -v rsync &>/dev/null; then
  echo "Rsync is not installed"
  echo "Please install it with your distro pacakge manager"
  #TODO:Implement distro wise managers
  exit 2
fi
#Capture current date in DD-MM-YYYY Format
current_date=$(date +%d-%m-%Y)
#Rsync
backup_log="~/tech/BashScripting/Project/"
rsync_options="-avb --backup-dir $2/current_date --delete "
$(which rsync) $rsync_options $1 $2/current >>$backup_$current_date.log
