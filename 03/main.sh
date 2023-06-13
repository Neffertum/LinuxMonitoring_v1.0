#! /bin/bash

if [ $# != 4 ]
then
  echo "Need 4 parameters"
else
  chmod +x check.sh
  ./check.sh $1 $2 $3 $4
fi
