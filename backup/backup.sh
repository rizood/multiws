#!/bin/bash
#wget https://github.com/${GitUser}/
GitUser="rizood"

echo -e "\e[32mloading...\e[0m"
clear
IP=$(wget -qO- icanhazip.com);
date=$(date +"%Y-%m-%d")
clear
echo " VPS Data Backup"
sleep 1
echo " Directory Created"
mkdir /root/backup
sleep 1
echo " VPS Data Backup Start Now . . ."
clear
echo " Please Wait , Backup In Process Now . . ."
sleep 1
clear
cp -r /root/.acme.sh /root/backup/ &> /dev/null
cp /etc/passwd /root/backup/ &> /dev/null
cp /etc/group /root/backup/ &> /dev/null
cp /etc/shadow /root/backup/ &> /dev/null
cp /etc/gshadow /root/backup/ &> /dev/null
cp /etc/ppp/chap-secrets /root/backup/chap-secrets &> /dev/null
cp /etc/ipsec.d/passwd /root/backup/passwd1 &> /dev/null
cp -r /var/lib/ssnvpn-pro/ /root/backup/ssnvpn-pro &> /dev/null
cp -r /etc/xray /root/backup/xray &> /dev/null
cp -r /home/vps/public_html /root/backup/public_html &> /dev/null
cp -r /etc/cron.d /root/backup/cron.d &> /dev/null
cp /etc/crontab /root/backup/crontab &> /dev/null
cd /root
zip -r $IP-$date.zip backup > /dev/null 2>&1
rclone copy /root/$IP-$date.zip dr:backup/
url=$(rclone link dr:backup/$IP-$date.zip)
id=(`echo $url | grep '^https' | cut -d'=' -f2`)
link="https://drive.google.com/u/4/uc?id=${id}&export=download"
echo "VPS Data Backup By GH-Reyz"
echo "Telegram : https://t.me/GHReyz /@ReyzV4"
echo ""
echo -e "Please Copy Link Below & Save In Notepad

Your VPS IP ( $IP )

$link

If you want to restore data, please enter the link above

Thank You For Using Our Services"
rm -rf /root/backup
rm -r /root/$IP-$date.zip
echo ""
