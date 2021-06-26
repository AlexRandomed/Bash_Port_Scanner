#!/bin/bash

ip=$1
GREEN=`tput setaf 10`
BLUE=`tput setaf 87`
RED=`tput setaf 1`
port_number=$2

function scan()
{
        GREEN=`tput setaf 10`
        BLUE=`tput setaf 87`
        port_number=$2
        ip=$1

        for port in $(seq 1 $port_number);
        do
                timeout 0.01 bash -c "</dev/tcp/$ip/$port && echo ${GREEN}[+] Port $port is open || echo Port $port is closed > /dev/null" 2>/dev/null
        done
}
clear
echo "${RED}[!] Scanning of $ip in progress..."
scan $ip $port_number
echo "${BLUE}[-] Scan finished ! : $port ports scanned"
