#! /bin/bash

export HOSTNAME="$(hostname)"
export TIMEZONE="$(timedatectl | grep "Time zone" | awk '{print $3, $4, $5}')"
export USER="$(whoami)"
export OS="$(cat /etc/issue | sed 's/\\n \\l//')"
export DATE="$(date | sed 's/ MSK//')"
export UPTIME="$(uptime -p)"
export UPTIME_SEC="$(awk '{print $1}' /proc/uptime)"
export IP="$(hostname -I)"
export MASK="$(ifconfig | grep -m1 netmask | awk '{print $4}')"
export GATEWAY="$(ip route | grep default | awk '{print $3}')"
export RAM_TOTAL="$(free -m | awk '/Mem:/{printf "%.3f GB", $2/1024}')"
export RAM_USED="$(free -m | awk '/Mem:/{printf "%.3f GB", $3/1024}')"
export RAM_FREE="$(free -m | awk '/Mem:/{printf "%.3f GB", $4/1024}')"
export SPACE_ROOT="$(df /root/ | awk '/\/$/{printf "%.2f MB", $2/1024}')"
export SPACE_ROOT_USED="$(df /root/ | awk '/\/$/{printf "%.2f MB", $3/1024}')"
export SPACE_ROOT_FREE="$(df /root/ | awk '/\/$/{printf "%.2f MB", $4/1024}')"

chmod +x print.sh
./print.sh
chmod +x check.sh
./check.sh