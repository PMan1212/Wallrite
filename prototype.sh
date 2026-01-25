#!/bin/bash

# This bash script is a functional prototype for a TUI equivalent I want to write,
# but it should be perfectly usable as-is if you customize it to your system
# I was too lazy to user-proof this script

echo "Available backgrounds:"

bgDir=/home/$USER/.config/backgrounds #Change to wherever your backgrounds are stored

availableBgs=()
for entry in "$bgDir"/*; do
	availableBgs+=($entry)
done

for i in ${!availableBgs[@]}; do # Print the available backgrounds
	i1=$((i + 1)) #Reindexing the list from 0 to 1 for readability
	echo $i1 ${availableBgs[i]}
done
echo #Newline

read -p "Input an index to switch to: " input
adjInput=$(($input - 1)) #Reindex back to 0

configFile=/home/$USER/.config/hypr/hyprpaper.conf #Replace with the path to your Hyprpaper config file

# Below, we echo the new background's absolute path into the config file for Hyprpaper
# Change this to your liking. By default, I use my settings

echo -e "preload = ${availableBgs[$adjInput]} \nwallpaper = , ${availableBgs[$adjInput]}" > $configFile

# Kill and restart hyprpaper to apply changes, redirecting log output to /dev/null

killall hyprpaper && hyprpaper &> /dev/null & disown
