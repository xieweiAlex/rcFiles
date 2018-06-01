# !/usr/bin/bash

git status | ag 'Pods/AugustAPI' > result.text
cat result.text

filename="result.text"
while read -r line
do
    name="$line"
		newName=`echo $name | sed 's/modified://'` 
    echo "fileName: $newName"
		rm -r ~/Desktop/apiRestore/
		mkdir ~/Desktop/apiRestore

		dir=`pwd`
		cd $dir
		echo $dir
#		echo "$dir/$newName"

		cp "result.text" ~/Desktop/apiRestore
#		cp "$newName" ~/Desktop/apiRestore
#		cat ~/Desktop/apiRestore

		echo "restored files are here:"
		ls ~/Desktop/apiRestore


done < "$filename"

