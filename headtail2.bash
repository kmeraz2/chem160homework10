#!/bin/bash
if [ ! -f $1 ]; then
	echo "No file found"
	exit 1
fi
intregex='^[0-9]+$'
if ! [[ $2 =~ $intregex ]] ; then
	echo "Second argument must be an integer"
exit 1
fi
n=$2
m=$2
if [ $# -eq 3 ] ; then
if ! [[ $3 =~ $intregex ]] ; then
	echo "Third argument must be an integer"
	exit 1
fi
m=$3 
fi
lines=$(cat $1 | wc -l)
if [ $lines -lt $n ] || [ $lines -lt $m ] ; then
	echo "File too short for specified lines"
exit 1
fi
echo "Head"
head -n $n $1
echo "Tail"
head -n $m $1

