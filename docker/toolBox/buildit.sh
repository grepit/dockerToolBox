#!/bin/bash
#echo "please provide username"
#read auser 
#echo "please provide password"
#read -s apassword
echo "....loading"
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker build -t toolbox/sh:1.2 .
#get the image you just built 
docker images 
echo "docker run --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH -dit"


