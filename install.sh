#!/bin/sh

if [ ! -e '/usr/share/moonraker_backup' ]; then
    echo "Backup original moonraker to 'moonraker_backup'"
	mv /usr/share/moonraker /usr/share/moonraker_backup
fi

if [ -e '/usr/share/moonraker' ]; then
    echo "Found moonraker, removing..."
	rm -r /usr/share/moonraker
fi

echo "Installing new moonraker..."
cp -r moonraker /usr/share/moonraker

echo "Install camera support..."
cp camera.html /usr/share/frontend/camera.html
cp index.html /usr/share/frontend/index.html
cp favicon.ico /usr/share/frontend/favicon.ico
cp mylogo.png /usr/share/frontend/mylogo.png
cp camera.html /usr/share/fluidd/camera.html

echo "Complete."