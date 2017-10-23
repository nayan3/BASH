#!/bin/bash

clear

print_sys() {
	echo "kernel_version: $kernel_version"
	echo "kernel_release: $kernel_release"
	echo "kernel_name: $kernel_name"
	echo "processor: $processor"
	echo "operating_system: $operating_system"
}

printMenu() {
	echo "####################"
	echo "#                  #"
	echo "#        MENU      #           ## Help ##"
	echo "#   (1)#SYS_INFO   #            print:"
	echo "#   (2)#MEMORY     #            1, 2, .., N"
	echo "#   (3)#UPTIME     #"
	echo "#                  #"	
	echo "####################"
	action
}

action() {
	read answer
	case "$answer" in
	"1" )
		clear
		print_sys
		;;
	"2" )
		clear
		echo "show output in b,[k,m,g,t]b?"
		read option
		free -$option
		;;
	"3" )
		clear
		uptime
		;;		
	* )
		break
		;;
	esac	
}

kernel_name=$(uname -s)
kernel_release=$(uname -r)
kernel_version=$(uname -v)
processor=$(uname -p)
operating_system=$(uname -o)

while [ 1=1 ]
	do
		printMenu
	done

echo "## App closed!"
#echo "$OSTYPE | $HOSTNAME | $HOSTTYPE | $HOME | $GROUPS | $DIRSTACK"