#!/bin/bash
#this script requires root privlages
desktop=(
	#example:
	#libreoffice-base.desktop
	libreoffice-calc.desktop
	libreoffice-draw.desktop
	libreoffice-impress.desktop
	libreoffice-math.desktop
	libreoffice-writer.desktop
)

for file in "${desktop[@]}"; do
	rm /usr/share/applications/$file
done
