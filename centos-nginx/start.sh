#!/bin/bash

jinja2 /etc/nginx/nginx.conf.jinja2 > /etc/nginx/nginx.conf

for f in $(bash -c "cd /nginx-templates/; find * 2> /dev/null"); do
  jinja2 "$f" > /etc/nginx/conf.d/$f
done

exec nginx
