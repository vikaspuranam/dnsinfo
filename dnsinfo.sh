#!/bin/bash


#Take Input
printf "Please Enter Domain Name: "
read domain

#DNS Resolve
printf "Host Name Is : \n"
host -t a $domain|grep "has address"|cut -d " " -f 4


#NS Extraction
printf "Nameservers Are : \n"
host -t ns $domain|grep "name server"|cut -d " " -f 4 > /tmp/ns.txt
cat /tmp/ns.txt | while read line; do host -t a $line; done|grep "has address"|cut -d " " -f 4

#MS Extraction
printf "Mail Exchange Servers Are : \n"
host -t mx hackerschool.in|grep "is handled"|cut -d " " -f 7 > /tmp/mx.txt
cat /tmp/mx.txt | while read line; do host -t a $line; done|grep "has address"|cut -d " " -f 4



#CHINNI
