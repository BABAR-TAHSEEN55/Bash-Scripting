#!/usr/bin/bash

# for current_number in {1..20}; do
#   echo $current_number
#   sleep 0
# done
# echo "This is outside For loop"

for file in logfiles/*.log; do
  tar -czvf ${file}.tar.gz $file
done

#TODO : Compress all your projects by creating a copy folder and delete all node MOdules
#TODO : Mail Utility System  ( Can send logs to companies)
