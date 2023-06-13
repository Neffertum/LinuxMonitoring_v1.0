#! /bin/bash

chmod +x config.sh
./config.sh

source config.sh

default_column1_background=6
default_column1_font_color=1
default_column2_background=2
default_column2_font_color=4

default1=$column1_background
default2=$column1_font_color
default3=$column2_background
default4=$column2_font_color

if [[ ! $column1_background  ]]; then
  column1_background=$default_column1_background
  default1="default"
fi
if [[ ! $column1_font_color ]]; then
  column1_font_color=$default_column1_font_color
  default2="default"
fi
if [[ ! $column2_background ]]; then
  column2_background=$default_column2_background
  default3="default"
fi
if [[ ! $column2_font_color ]]; then
  column2_font_color=$default_column2_font_color
  default4="default"
fi

chmod +x check.sh
./check.sh $column1_background $column1_font_color $column2_background $column2_font_color

arr[1]=$column1_background
arr[2]=$column1_font_color
arr[3]=$column2_background
arr[4]=$column2_font_color

for ((i = 1; i < 5; i++)); do
  if [[ ${arr[$i]} == 1 ]]; then
    arr[$i]="white"
  fi
  if [[ ${arr[$i]} == 2 ]]; then
    arr[$i]="red"
  fi
  if [[ ${arr[$i]} == 3 ]]; then
    arr[$i]="green"
  fi
  if [[ ${arr[$i]} == 4 ]]; then
    arr[$i]="blue"
  fi
  if [[ ${arr[$i]} == 5 ]]; then
    arr[$i]="purple"
  fi
  if [[ ${arr[$i]} == 6 ]]; then
    arr[$i]="black"
  fi
done

echo -e "\nColumn 1 background = $default1 (${arr[1]})"
echo "Column 1 font color = $default2 (${arr[2]})"
echo "Column 2 background = $default3 (${arr[3]})"
echo "Column 2 font color = $default4 (${arr[4]})"
