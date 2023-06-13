#! /bin/bash

arr[0]=$1
arr[1]=$2
arr[2]=$3
arr[3]=$4

flag="good"
flag2="good"

for ((i = 0; i < 4; i++))
do
  if [[ ${arr[$i]} < 1 || ${arr[$i]} > 6 ]]
  then
    flag="bad"
  fi
done

if [[ ${arr[0]} == ${arr[1]} || ${arr[2]} == ${arr[3]} ]]
then
  flag2="bad"
fi

if [[ $flag == "bad" ]]
then
  echo "Parameters interval 1-6. Try again"
elif [[ $flag2 == "bad" ]]
then
  echo "1 and 2 parameters need be different. 3 and 4 parameters need be different. Try again"
else
  chmod +x color.sh
  ./color.sh $1 $2 $3 $4
fi
