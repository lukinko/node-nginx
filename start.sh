#!/bin/sh
mkdir -p /run/nginx
/usr/bin/supervisord -n -c /etc/supervisord.conf
