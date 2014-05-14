#!/bin/bash
rm -f "/config/Plex Media Server/plexmediaserver.pid"
/etc/init.d/plexmediaserver start
sleep 5
tail -f /config/Plex\ Media\ Server/Logs/**/*.log
