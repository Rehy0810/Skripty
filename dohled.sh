#!/bin/bash
cas=`date +%T`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
disk=`df -h | grep sda1 | awk -F " " '{print $2}'`
vdisk=`df -h | grep sda1 | awk -F " " '{print $5}'`


echo "Aktuální čas: "$cas >> /home/student/Plocha/Skripty/index.html
echo "Moje IP: "$ip >> /home/student/Plocha/Skripty/index.html
echo "Přijatá data: "$rx >> /home/student/Plocha/Skripty/index.html
echo "Odeslaná data: "$tx >> /home/student/Plocha/Skripty/index.html
echo "Velikost disku:"$disk>> /home/student/Plocha/Skripty/index.html
echo "Využití disku:"$vdisk >> /home/student/Plocha/Skripty/index.html
echo "<br><br>" >> /home/student/Plocha/Skripty/index.html

