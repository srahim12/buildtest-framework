#!/bin/sh

module purge
module=GCC
version=5.2.0
module load $module/$version

if [ $? != 0 ]; then
	echo "unable to load module $module/$version"
	exit 1
fi

g++ -v
if [ $? != 0 ]; then
	echo "Unable to run g++ -v"
	exit 1
fi
