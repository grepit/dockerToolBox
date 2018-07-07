#!/bin/bash

echo "please enter the fully qualified file path:"
read inFile
echo "file is :"
echo " "
ls -ltra $inFile
valueIn=$(< $inFile)
nlfeed=$(echo '
')
valueOut=$(printf '%q' "$valueIn" $nlfeed)
echo " "
echo "[ BEFORE ] ========================================================="
echo $valueIn
echo " "
echo "[ AFTER ] =========================================================="
echo $valueOut
