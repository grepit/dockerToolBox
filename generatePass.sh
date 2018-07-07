#!/bin/bash
echo " " 
echo " " 
echo "would you like: "
echo "1. Password"
echo "2. Passphrase (for privatekey only)"
echo "-------------------------------------"
echo "please enter a number:"
read selected

if [[ $selected -eq 1 ]]; then 
openssl rand -base64 15

elif [[ $selected -eq 2 ]]; then
head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo ''
else
echo "you did not select the write value, run the script again"
fi

