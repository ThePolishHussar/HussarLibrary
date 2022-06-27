#! /bin/bash

### DOCUMENTATION ###
# See https://github.com/ThePolishHussar/HussarLibrary/binge for fill documentation.
# expected video storage: maindir/Season#/Epiosode####.mkv
# Season folders must be named "Season" followed by number. No spaces
# Episodes must be names "Episode" followed by number. Must be 4 digits long. If less than 1000, add zeros before.
# script must be loacted in maindir
# modify MAINDIR in line 12 to directory with videos ensure porper directory is used
# modify lasteps array on line 16 for proper function with last episode of each season

cd MAINDIR
[ -f episode ] || echo 1 > episode
while true; do
episode=$(cat episode)
lasteps=(62 77 92 130 143 195 228 263 336 381 407 421 458 516 578 627)
season=1
for x in "${lasteps[@]}"; do
	if (( episode > x  )); then 
		season=$(expr $season + 1)
	else
		break
	fi
done
spacing=""
for y in 999 99 9; do
	if (( episode < y )); then
		spacing="$spacing"0
	else
		break
	fi 
done
mpv --fullscreen Season$season/Episode$spacing$episode.mkv
episode=$(expr $episode + 1)
echo "$episode" > episode
	read -p "Play Episode $episode? [Y/n] " yn
	case $yn in
		[Nn]* ) break;; 
	esac
done
