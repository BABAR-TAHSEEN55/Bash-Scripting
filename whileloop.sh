#!/usr/bin/bash

# mynum=1
#
# while [[ $mynum -le 10 ]]; do
#   echo $mynum
#   mynum=$((mynum + 1))
#   sleep 1
# done

while [ -f ~/testfile ]; do
  echo "As of $(date) , File exists"
  sleep 5
done
echo "File has been Deleted on $(date)"
