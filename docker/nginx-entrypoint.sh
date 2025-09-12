#!/bin/sh
# Replace environment variables in nginx.conf
envsubst '$DOMAIN' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf.generated
mv /etc/nginx/conf.d/default.conf.generated /etc/nginx/conf.d/default.conf

# Start Nginx
nginx -g "daemon off;"
