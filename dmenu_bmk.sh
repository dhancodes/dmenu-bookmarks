#!/usr/bin/env bash

path="/home/$USER/Dropbox/bm.csv"
choice=$(cat $path | dmenu -l 10 -p "Select bookmark")
command=""
[[ $(echo $choice | cut -d ";" -f3 | grep private) = "" ]] || command="--private-window"

case $choice in
	 "")
		exit ;;
	*) 
		firefox $command $(echo $choice|cut -d ";" -f2)
esac
