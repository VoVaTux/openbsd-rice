#!/bin/sh

vol=$(sndioctl -n output.level | awk '{ print int($0*100) '})

if [ "$vol" -gt "70" ]; then
	icon="🔊"
elif [ "$vol" -gt "30" ]; then
	icon="🔉"
elif [ "$vol" -gt "0" ]; then
	icon="🔈"
else
        echo 🔇 && exit
fi

echo "$icon $vol%"

