#!/bin/bash

bash -c "minga /etc/minga/nginx /etc/minga/nginx /etc/nginx '$NGINX_DEFAULT_OPT' '$NGINX_OPT'"

exec nginx
