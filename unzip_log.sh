#!/bin/bash

path=$1
echo "."

if [[ "$#" -ne 1 ]]; then
	echo "no log path provided, no way to unzip log!! "
    path="sync"	
    exit 0
fi


echo ".."
echo "$path"

time_=`date +'%Y-%m-%d-%H-%M'`
folder="$time_"+"_log"
echo "$folder"

`mkdir $folder`

echo `pwd`

7z e $path -pBlackBeard5
`mv com.aug*20*.log  "./$folder"`

cd $folder
cat *.log > fullResult.md
cat fullResult.md | grep AutoUnlock > autounlock.md
cat fullResult.md | grep Bluetooth > ble.md
cat fullResult.md | grep 'Unity' > unity.md
cat fullResult.md | grep 'GuestList' > guest.md


echo "..."

