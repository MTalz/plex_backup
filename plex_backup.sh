#!/bin/sh
cd /volume1/media/backup/plex/

echo "Stopping Plex..."
/usr/syno/bin/synopkg stop "PlexMediaServer"

echo "Copying Files..."
tar -zcvf Preferences.tar.gz "/volume1/@apphome/PlexMediaServer/Plex Media Server/Preferences.xml"
tar -zcvf Databases.tar.gz "/volume1/@apphome/PlexMediaServer/Plex Media Server/Plug-in Support/Databases"

echo "Restarting Plex..."
/usr/syno/bin/synopkg start "PlexMediaServer"