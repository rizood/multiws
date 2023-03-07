#!/bin/bash
#wget https://github.com/${GitUser}/
GitUser="rizood"

echo -e "\e[32mloading...\e[0m"
clear
echo "This Feature Can Only Be Used According To Vps Data With This Autoscript"
echo "Please input link to your vps data backup file."
echo "You can check it on your email if you run backup data vps before."
read -rp "Link File: " -e url
wget -O backup.zip "$url"
unzip backup.zip
rm -f backup.zip
sleep 1
echo Start Restore
cp /root/backup/passwd /etc/ &> /dev/null
cp /root/backup/group /etc/ &> /dev/null
cp /root/backup/shadow /etc/ &> /dev/null
cp /root/backup/gshadow /etc/ &> /dev/null
cp /root/backup/chap-secrets /etc/ppp/ &> /dev/null
cp /root/backup/passwd1 /etc/ipsec.d/passwd &> /dev/null
cp /root/backup/ss.conf /etc/shadowsocks-libev/ss.conf &> /dev/null
sleep 1
cp -r /root/backup/ssnvpn-pro /var/lib/ &> /dev/null
cp -r /root/backup/.acme.sh /root/ &> /dev/null
cp -r /root/backup/ssnvpn /etc/ &> /dev/null
cp -r /root/backup/xray /etc/ &> /dev/null
cp -r /root/backup/public_html /home/vps/ &> /dev/null
cp -r /root/backup/crontab /etc/ &> /dev/null
cp -r /root/backup/cron.d /etc/ &> /dev/null
rm -rf /root/backup &> /dev/null
strt
rm -rf /root/backup
rm -f backup.zip
echo Done
