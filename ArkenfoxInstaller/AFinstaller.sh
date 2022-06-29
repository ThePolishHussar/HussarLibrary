#!/bin/bash
	firefox --headless & sleep 5 && killall firefox
	PROFILE_DIR=$(cat ~/.mozilla/firefox/profiles.ini | grep 'Default=' | grep release | sed 's/Default=//')
	AFVER=$(curl -s https://github.com/arkenfox/user.js | grep 'arkenfox user.js v' | sed 's/mr-2//' | tr -d [:alpha:][:punct:][:space:])
	mkdir ~/tempff
	cd ~/tempff	
	wget "https://github.com/arkenfox/user.js/archive/refs/tags/${AFVER}.0.tar.gz"
	tar -xf "$AFVER.0.tar.gz"
	cp user.js-$AFVER.0/user.js ~/.mozilla/firefox/$PROFILE_DIR/user.js
	cd
	rm -r ~/tempff	
