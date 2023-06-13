#! /bin/bash

arr[0]=$1
arr[1]=$2
arr[2]=$3
arr[3]=$4

end="\033[0m"

whiteBack="\033[47m"
redBack="\033[41m"
greenBack="\033[42m"
blueBack="\033[44m"
purpleBack="\033[45m"
blackBack="\033[40m"

whiteText="\033[37m"
redText="\033[31m"
greenText="\033[32m"
blueText="\033[34m"
purpleText="\033[35m"
blackText="\033[30m"

for i in 0 2
do
  if [[ ${arr[$i]} == 1 ]]; then
    arr[$i]=$whiteBack
  elif [[ ${arr[$i]} == 2 ]]; then
    arr[$i]=$redBack
  elif [[ ${arr[$i]} == 3 ]]; then
    arr[$i]=$greenBack
  elif [[ ${arr[$i]} == 4 ]]; then
    arr[$i]=$blueBack
  elif [[ ${arr[$i]} == 5 ]]; then
    arr[$i]=$purpleBack
  elif [[ ${arr[$i]} == 6 ]]; then
    arr[$i]=$blackBack
  fi
done

for i in 1 3
do
  if [[ ${arr[$i]} == 1 ]]; then
    arr[$i]=$whiteText
  elif [[ ${arr[$i]} == 2 ]]; then
    arr[$i]=$redText
  elif [[ ${arr[$i]} == 3 ]]; then
    arr[$i]=$greenText
  elif [[ ${arr[$i]} == 4 ]]; then
    arr[$i]=$blueText
  elif [[ ${arr[$i]} == 5 ]]; then
    arr[$i]=$purpleText
  elif [[ ${arr[$i]} == 6 ]]; then
    arr[$i]=$blackText
  fi
done

chmod +x print.sh
./print.sh ${arr[0]} ${arr[1]} ${arr[2]} ${arr[3]} $end
