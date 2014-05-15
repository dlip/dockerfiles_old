#!/bin/bash

for f in $(bash -c "cd /nginx-templates/; find * &> /dev/null"); do
  mustache.sh < $f > /etc/nginx/sites-enabled/$f
done

exec nginx
