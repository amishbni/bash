#!/bin/bash

address=$1
method=$2

function ls_count {
	address=$1
	ls -lA $address | wc -l
}

function find_os {
	address=$1
	find $address -maxdepth 1 -iname "*OS*"
}

case $method in
	1)
		ls_count $address
	;;
	2)
		find_os $address
	;;
	*)
		echo "Invalid arguments."
	;;
esac

