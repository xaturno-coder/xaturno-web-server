#!/bin/sh
set -e

# Substitute environment variables into a new file
envsubst '$DOMAIN' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.generated.conf

# Start Nginx using the generated config
nginx -g "daemon off;" -c /etc/nginx/conf.d/default.generated.conf
