#!/bin/bash
#Take Input
#printf "Please Enter Domain Name: "
#read domain
#DNS Resolve
#printf "Host Name Is : \n"
#host -t a $domain|grep "has address"|cut -d " " -f 4
#NS Extraction
#printf "Nameservers Are : \n"
#host -t ns $domain|grep "name server"|cut -d " " -f 4 > /tmp/ns.txt
#cat /tmp/ns.txt | while read line; do host -t a $line; done|grep "has address"|cut -d " " -f 4
#MS Extraction
#printf "Mail Exchange Servers Are : \n"
#host -t mx hackerschool.in|grep "is handled"|cut -d " " -f 7 > /tmp/mx.txt
#cat /tmp/mx.txt | while read line; do host -t a $line; done|grep "has address"|cut -d " " -f 4



#Take Input
printf "Please Enter Domain Name: "
read domain
space='\t'

#DNS Resolve
printf "\nHost Name Is : \n\n"
hostname=$(host -t a $domain|grep "has address"|cut -d " " -f 4)
printf $domain'%-10s%-4s'$hostname'\n\n' 


#NS Extraction
printf "\nNameservers Are : \n\n"
host -t ns $domain|grep "name server"|cut -d " " -f 4 > /tmp/ns.txt
cat /tmp/ns.txt | while read line; do printf $line'%-10s%-4s';host -t a $line|grep "has address"|cut -d$
printf "\n"


#MS Extraction
printf '\n'
printf "Mail Exchange Servers Are : \n\n"
host -t mx hackerschool.in|grep "is handled"|cut -d " " -f 7 > /tmp/mx.txt
cat /tmp/mx.txt | while read line; do printf $line'%-10s%-14s';host -t a $line|grep "has address"|cut -$






#CHINNI
