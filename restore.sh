#!/bin/sh

if [ -e '/usr/share/moonraker_backup' ]; then
    echo "Restore original moonraker from 'moonraker_backup'"
	if [ -e '/usr/share/moonraker' ]; then
		echo "Found moonraker, removing..."
		rm -r /usr/share/moonraker
    fi
	cp -r /usr/share/moonraker_backup /usr/share/moonraker
	echo "Complete."
else	
	echo "No backup found, nothing to do here."
fi