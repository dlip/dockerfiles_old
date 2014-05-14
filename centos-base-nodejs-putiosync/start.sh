#!/bin/bash
mustache.sh < /put-io-sync/config.js.mustache > /put-io-sync/config.js
cd put-io-sync

node sync.js -d 0 -l /data
