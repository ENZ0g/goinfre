#!/bin/bash

if [ $# -lt 1 ]; then
	echo "goinfre: Need one argument - filename or dirname to move"
	exit 1
fi

if [[ -f $1 || -d $1 ]]; then
	if [[ -f ~/goinfre/$1 || -d ~/goinfre/$1 ]]; then
		echo "goinfre: File with this name is already exists in ~/goinfre: $1"
		exit 2
	else
		mv $1 ~/goinfre/
		ln -s ~/goinfre/$1 `pwd`/$1
	fi
else
	echo "goinfre: No such file or directory: $1"
fi
