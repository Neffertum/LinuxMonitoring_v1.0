#! /bin/bash

if [[ $1 =~ ^-?[0-9]+*\.?[0-9]+$ ]]
then
  echo "Wrong argument: only text"
else
  echo $1
fi