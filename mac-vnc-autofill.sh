#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: mac-vnc-autofill.sh {address} {id} {pw}"
    exit -1
else
    echo "run apple script to connect remote mac device"
fi

osascript <<EOF
property address : ""
property idInput : ""
property pwInput : ""

on run
	set address to "$1"
	set idInput to "$2"
	set pwInput to "$3"
	
	tell application "Screen Sharing"
		activate # start Screen Sharing if not running yet
		tell application "System Events"
			key code 51 using {command down} # Delete whatever is in the textbox
			keystroke address # host you want to connect to
			key code 36 # press enter
			delay 1 # wait a moment for the next screen to appear
			keystroke idInput # username
			keystroke tab
			keystroke pwInput # password
			key code 36 # press enter
			delay 2 # wait to connect to the target machine
			key code 51 using {command down} # delete anything in the textbox
			keystroke pwInput # typing the password on the remote machines textbox
			key code 36 # hitting enter to log in
		end tell
	end tell
end run
EOF