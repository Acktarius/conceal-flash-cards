#!/bin/bash
# shorcut installer for Conceal-flash-cards for Ubuntu users
# this file is subject to Licence
# Copyright (c) 2024, Acktarius
#
# make sure ./install.sh is an executable file
# otherwise, run: chmod 755 install.sh
# run with command: ./install.sh
#
#
#variables
user=$(id -nu 1000)
path=$(pwd)
#Functions
shortcutCreator() {
cat << EOF > /home/${user}/.local/share/applications/Conceal-flash-cards.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Conceal.Network Flash-Cards
Path=${path}
Exec=${path}/launcher/launch.sh
Terminal=false
Type=Application
Icon=${path}/icon/ccx-flashcards.png
Hidden=false
NoDisplay=false
Terminal=false
Categories=Office
X-GNOME-Autostart-enabled=true
Comment=Learn about Conceal Network
EOF
echo "shortcut created, you may have to log out and log back in"
}
already() {
read -p  "shortcut already in place, do you want to replace it (y/N)" ans
	case $ans in
		y | Y | yes)
		rm -f /home/${user}/.local/share/applications/Conceal-flash-cards.desktop
		shortcutCreator
		;;
		*)
		echo "nothing done"
		;;
	esac
}
#check and install
##not already install
if [[ ! -f /home/${user}/.local/share/applications/Conceal-flash-cards.desktop ]]; then 
shortcutCreator
else
already
fi