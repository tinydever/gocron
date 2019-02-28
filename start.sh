#!/bin/bash

if [ -z "$CHOWN_APP_DATA" ]; then
    chown -Rf app.app /var/www/html
fi

exec /usr/bin/supervisord -n -c /etc/supervisord.conf
