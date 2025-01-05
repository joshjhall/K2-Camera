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
cp -r K2-Camera-main/moonraker /usr/share/moonraker

echo "Install camera support..."
cp K2-Camera-main/camera.html /usr/share/frontend/camera.html
cp K2-Camera-main/index.html /usr/share/frontend/index.html
cp K2-Camera-main/favicon.ico /usr/share/frontend/favicon.ico
cp K2-Camera-main/mylogo.png /usr/share/frontend/mylogo.png
cp K2-Camera-main/camera.html /usr/share/fluidd/camera.html

echo "Complete."