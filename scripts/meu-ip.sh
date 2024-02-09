#!/bin/bash

amarelo='\e[0;93m'
# ipv4
echo
echo -ne "${amarelo}ipv4: "; wanip=$(dig +short -4 myip.opendns.com @resolver1.opendns.com);
echo "$wanip" | while read ip; do
    echo "$ip $(whois "$ip" | awk ' /[Cc]ountry/{print $2}')"
done

# ipv6
echo
echo -n "ipv6: "; wanip=$(dig +short -6 myip.opendns.com aaaa @resolver1.ipv6-sandbox.opendns.com);
echo "$wanip" | while read ip; do echo "$ip $(whois "$ip" | awk ' /[Cc]ountry/{print $2}')" | sed '$d'
done 
echo
