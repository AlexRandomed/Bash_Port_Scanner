#!/bin/bash

ip=$1
GREEN=`tput setaf 10`
BLUE=`tput setaf 87`
RED=`tput setaf 1`
port_number=$2
precision=$3

function scanner()
{
        GREEN=`tput setaf 10`
        BLUE=`tput setaf 87`
        port_number=$2
        ip=$1
        precision=$3
        if [ -z $precision ]; 
                then precision=0.05; 
                else echo "Precision is set to $precision"; 
        fi
        for port in $(seq 1 $port_number);
        do
                timeout $precision bash -c "</dev/tcp/$ip/$port && echo ${GREEN}[+] Port $port is open || echo Port $port is closed > /dev/null" 2>/dev/null || echo Connection timeout > /dev/null
        done
}

echo "${RED}[!] Scanning of $ip in progress..."
scanner $ip $port_number $precision
echo "${BLUE}[-] Scan finished ! : $port ports scanned"

