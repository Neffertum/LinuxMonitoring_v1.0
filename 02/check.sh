#! /bin/bash

read -p "Do you want to write logs to file? (Y/N): " answer

if [[ $answer == "Y" || $answer == "y" ]]
then
file_name=$(date +"%d_%m_%y_%H_%M_%S".status)
  ./print.sh >> $file_name
  echo "Create log file $file_name"
fi