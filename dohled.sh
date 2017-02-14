#!/bin/bash

cas=`date +%T`
echo "Aktuální čas:"$cas
ip=`ifconfig | grep Všesměr | awk -F ":" '{printf$2}' | awk -F " " '{print $1}'`
echo "Moje ip:" $ip

rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
echo "Přijatá data: "$rx

tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
echo "Přijatá data: "$tx 


echo "<html>" >rehacek.html

echo "<body>">>rehacek.html 

echo $cas>>rehacek.html 

echo "<br>">>rehacek.html 

echo $ip>>rehacek.html 

echo "<br>">>rehacek.html 

echo $rx>>rehacek.html 

echo "<br>">>rehacek.html 

echo $tx>>rehacek.html 

echo "<br>">>rehacek.html 

echo "</body>" >>rehacek.html

echo "</html>" >>rehacek.html

