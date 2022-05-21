#!/bin/bash
#this script requires root privlages
desktop=(
	#example:
	#libreoffice-base.desktop
)

for file in "${desktop[@]}"; do
	rm /usr/share/applications/$file
done
