#! /bin/bash

if [ $# -ne 1 ]
then
  echo "Need one argument"
else
  chmod +x check.sh
  ./check.sh "$1"
fi