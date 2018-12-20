#!/bin/bash

IP=$(curl ipchicken.com)

result=$(echo "$IP" | grep "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}" | tr -d '<br>')

echo "$result" > /home/pi/Documents/ip.txt
sleep 1
scp /home/pi/Documents/ip.txt user@host.com:~/house/ip.txt
