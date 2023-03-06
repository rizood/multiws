#!/bin/bash
#wget https://github.com/${GitUser}/
GitUser="rizood"

echo -e "\e[32mloading...\e[0m"
clear
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);

echo -e ""
echo -e "\033[1;35m ══════════════════════════════════════════\e[m"
echo -e "         ♦️ OpenVPN Menu ♦️"
echo -e "\033[1;35m ══════════════════════════════════════════\e[m"
echo -e "     (•1) Create SSH & OpenVPN Account\e[m"
echo -e "     (•2) Trial Account SSH & OpenVPN\e[m"
echo -e "     (•3) Renew SSH & OpenVPN Account\e[m"
echo -e "     (•4) Delete SSH & OpenVPN Account\e[m"
echo -e "     (•5) Check User Login SSH & OpenVPN\e[m"
echo -e "     (•6) List Member SSH & OpenVPN\e[m"
echo -e "     (•7) Delete User Expired SSH & OpenVPN\e[m"
echo -e "     (•8) Set up Autokill SSH\e[m"
echo -e "     (•9) Cek Users Who Do Multi Login SSH\e[m"
echo -e "     (10) User List\e[m"
echo -e "     (11) User Lock\e[m"
echo -e "     (12) User Unlock\e[m"
echo -e "     (13) User Password\e[m"
echo -e "     (14) Restart Service Dropbear, Squid3,\e[m"
echo -e "            OpenVPN & SSH\e[m"
echo -e ""
echo -e "\033[1;35m ══════════════════════════════════════════\e[m"
echo -e "    MENU                               \e[m"
echo -e "\033[1;35m ══════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -p "       Please Input Number  [1-14 or x] :  "  ssh
echo -e ""
case $ssh in
1)
add-ssh
;;
2)
trial
;;
3)
renew-ssh
;;
4)
del-ssh
;;
5)
cek-ssh
;;
6)
member
;;
7)
delete
;;
8)
autokill
;;
9)
ceklim
;;
10)
user-list
;;
11)
user-lock
;;
12)
user-unlock
;;
13)
user-password
;;
14)
restart
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
