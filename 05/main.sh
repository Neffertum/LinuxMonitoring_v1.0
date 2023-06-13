#! /bin/bash

export START_SEC=$(date +%S)
export START_NANO=$(date +%N)
export START=$(echo "scale=2; $START_NANO/1000000000+$START_SEC" | bc)

if [[ $# != 1 ]]; then
  echo "Need one argument"
# elif [[ -d $1 ]]; then
#   echo "Directory not exist"
elif [[ $1 =~ /$ ]]; then
  chmod +x info.sh
  ./info.sh $1
else
  echo "Need to white path (.../)"
fi