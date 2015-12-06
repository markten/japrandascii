#!/bin/bash
while true; do
	URL=$(curl http://imgur.com/random -Ls -I -o /dev/null -w '%{url_effective}')
	URL=${URL: -5};
	jp2a "http://imgur.com/$URL.jpg" -f -b --colors 2> /dev/null

	if [ $? ]
		then
			sleep 5
			echo "$URL" >> links.txt
	fi

done
