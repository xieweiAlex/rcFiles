# !/usr/bin/bash

des="apiRestore"
`rm -r ~/Desktop/$des/`
`mkdir ~/Desktop/$des`

git status | ag 'Pods/AugustAPI' | sed 's/modified: //' > status.txt
`cp "./status.txt" ~/Desktop/$des/`

dir=`pwd`
echo "current path: $dir \n"

function reserve() {
		filename=$1
		echo "here is file: $filename \n"
		`cp "$filename" ~/Desktop/$des/`
}

apiDir="./Develop/august-api/August API/"
function dispatch() {
	
		dd="~"
    eval cd $dd
		echo "current path: $`pwd`"
		filename=$1				
		echo "moving file: $filename \n"
		`cp "$filename" "$apiDir"`
}

changes="status.txt"
while read -r line
do
		fileName="$line"
    echo "changed fileName: $fileName"
		reserve "$fileName"
done < "$changes"

echo "temp move success! \n\n"

`cd ~/Desktop/$des`
tmpFile="status.txt"
while read -r line
do
		fileName="$line"
    echo "gonna move fileName: $fileName"
		dispatch "$fileName"
done < "$tmpFile"

echo "all the restored files are here:"
`cd -`
`ls ~/Desktop/$des`


