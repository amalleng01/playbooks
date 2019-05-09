#!/bin/bash
#
#This script stops the containers that are RUNNING
#

for contenedores in $(lxc list | grep RUNNING | cut -d " " -f2)
do
	echo "$contenedores";
	lxc stop $contenedores;
done
	
