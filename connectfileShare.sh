#!/bin/bash
#how to run
# ./connectfileShare.sh
echo "username:"
read userm
echo "password"
read -s passm
echo "username=$userm">/containertools/cifs.credo
echo "password=$passm">>/containertools/cifs.credo

mount -v -t cifs //somePath /toProd -o credentials=/containertools/cifs.credo,sec=ntlm
rm -f /containertools/cifs.credo
