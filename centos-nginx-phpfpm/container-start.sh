#!/bin/bash

chown -R nginx:nginx /app

service php-fpm start

exec nginx
