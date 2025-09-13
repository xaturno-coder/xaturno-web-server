#!/bin/sh

DOMAIN="xaturno.mx"
EMAIL="xaturnowebservices@gmail.com"
CERT_PATH="/etc/letsencrypt/live/$DOMAIN/fullchain.pem"

# Genera certificados si no existen
if [ ! -f "$CERT_PATH" ]; then
  echo "Certificados no encontrados. Generando con Certbot..."
  certbot certonly --webroot -w /var/www/certbot \
    -d $DOMAIN -d www.$DOMAIN \
    --email $EMAIL --agree-tos --no-eff-email
fi

# Espera a que existan los certificados
while [ ! -f "$CERT_PATH" ]; do
  echo "Esperando certificados..."
  sleep 2
done

echo "Certificados listos. Iniciando Nginx..."
nginx -g "daemon off;"
