#!/bin/bash

# $1: replacement icon
# $2: icon to replace

i=0
for d in `ls -d /usr/share/icons/Papirus-Dark/*/places/`
do
	if [[ ! -f $d$1 || ! -f $d$2 ]]; then
		continue
	fi

	if [ ! -f $d$2.old ]; then
		cp $d$2 $d$2.old

		i++
	else
		continue
	fi

	cp $d$1 $d$2
done

if [ ! $i == 0 ]; then
	echo "updated"
fi