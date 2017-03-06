#!/bin/sh

module purge
module load GCC/5.2.0
module=OpenMPI
version=2.0.0
module load $module/$version

if [ $? != 0 ]; then
	echo "unable to load module $module/$version"
	exit 1
fi

ompi_info 
if [ $? != 0 ]; then
	echo "Unable to run ompi_info "
	exit 1
fi
