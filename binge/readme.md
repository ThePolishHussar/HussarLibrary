# Binge - Script for binging video content

## Usage
Just run:
```sh
bash binge.sh
```

## Dependancies
- mpv
- bash or compatible shell
## Installation
Just drop the script into the folder with video files, and format the names of episodes and seasons acordingly. Then run:

Files must stored as followed:
- MainDir
    - binge.sh
    - episode
    - Season#
        - Episode####.mkv

All Season folders must be named "Season" with the number directly afterward. No spaces.
Ex: "Season1" "Season13"

All episodes must be named "Episode" with the number directly afterward. 4 digits, 0s if needed and no spaces.
Episode count does not reset with new serason
Ex: "Episode0003.mkv" Episode0023.mkv" Episode1233.mkv"

## Features
- Store Last episode for later continuation
- Automatically asks to play next episode
- Season Support

## License
GPLv3
