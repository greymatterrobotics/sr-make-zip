#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -n "$1" ] && [ -n "$2" ]
then
	mkdir robot
	cp -r $DIR/pyenv/pyenv/* robot
	mkdir robot/user
	cp $1/*.py robot/user/
	zip -r $2/robot.zip robot/*
	rm -rf robot
else
	echo "Usage: make_zip.sh code_dir zip_dir"
fi