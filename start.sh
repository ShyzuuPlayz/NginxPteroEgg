#!/bin/ash
rm -rf /home/container/tmp/*
rm -rf /home/container/logs
mkdir logs

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm81 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
echo "Successfully started"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/
