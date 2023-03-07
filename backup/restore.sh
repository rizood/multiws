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
sleep 1
echo Start Restore
rm -f /root/backup/backup.zip &> /dev/null
sleep 1
cd /root/backup
echo -e "• Restoring passwd data..."
sleep 1
cp /root/backup/passwd /etc/ &> /dev/null
echo -e "• Restoring group data..."
sleep 1
cp /root/backup/group /etc/ &> /dev/null
echo -e "• Restoring shadow data..."
sleep 1
cp /root/backup/shadow /etc/ &> /dev/null
echo -e "• Restoring gshadow data..."
sleep 1
cp /root/backup/gshadow /etc/ &> /dev/null
echo -e "• Restoring chap-secrets data..."
sleep 1
cp /root/backup/chap-secrets /etc/ppp/ &> /dev/null
echo -e "• Restoring passwd1 data..."
sleep 1
cp /root/backup/passwd1 /etc/ipsec.d/passwd &> /dev/null
echo -e "• Restoring ss.conf data..."
sleep 1
cp /root/backup/ss.conf /etc/shadowsocks-libev/ss.conf &> /dev/null
echo -e "• Restoring admin data..."
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
rm -f /root/backup/backup.zip &> /dev/null
echo Done
