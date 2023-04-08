#!/bin/bash

# $1: replacement icon
# $2: icon to replace

update=false
if [ ! -f $d$2.old ]; then
	cp /usr/share/icons/Papirus-Dark/symbolic/places/$2 /usr/share/icons/Papirus-Dark/symbolic/places/$2.old

	$update=true
fi

cp /usr/share/icons/Papirus-Dark/symbolic/places/$1 /usr/share/icons/Papirus-Dark/symbolic/places/$2

if [ $update == true ]; then
	echo "updated"
fi