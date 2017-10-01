#!/bin/bash


echo "[sw-clock]--------------------------------------------------------------------------------------------------------"
date
echo "[hw-clock]--------------------------------------------------------------------------------------------------------"
hwclock
echo "[id]-------------------------------------------------------------------------------------------------------------"
id
echo "[cpu]------------------------------------------------------------------------------------------------------------"
lscpu | grep -e "アーキテクチャ" -e "Byte Order" -e "CPU(s):" -e "スレッド数" -e "コア数" -e "MHz" -e "Model name" -e " キャッシュ"
echo "[mem]------------------------------------------------------------------------------------------------------------"
free -m
cat /proc/meminfo | grep -e "MemTotal" -e "MemFree" -e "Buffers" -e "Cached" -e "SwapTotal" -e "SwapFree" -e "Slab"
echo "[disk]-----------------------------------------------------------------------------------------------------------"
df -Th
echo "[kernel]---------------------------------------------------------------------------------------------------------"
uname -a
echo "[hostname]-------------------------------------------------------------------------------------------------------"
hostname
echo "[resolve-priority]-----------------------------------------------------------------------------------------------"
cat /etc/nsswitch.conf | grep "hosts: "
echo "[resolver--localhosts]-------------------------------------------------------------------------------------------"
cat /etc/nsswitch.conf | grep "hosts: "
echo "[resolver--resolver]---------------------------------------------------------------------------------------------"
cat /etc/resolv.conf
echo "[ntp]------------------------------------------------------------------------------------------------------------"
ntpq -p


