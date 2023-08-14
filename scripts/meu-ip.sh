#!/bin/bash

# ipv4
echo
echo ipv4:
echo ----- 
wanip=$(dig +short -4 myip.opendns.com @resolver1.opendns.com);
echo "$wanip" | while read ip; do
    echo "$ip $(whois "$ip" | awk ' /[Cc]ountry/{print $2}')"
done

# ipv6
echo
echo ipv6:
echo -----
wanip=$(dig +short -6 myip.opendns.com aaaa @resolver1.ipv6-sandbox.opendns.com);
echo "$wanip" | while read ip; do
    echo "$ip $(whois "$ip" | awk ' /[Cc]ountry/{print $2}')"
    echo
done
