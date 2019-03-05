#!/bin/sh
echo "Laravel start"
#php /usr/local/bin/composer.phar install
cp /var/www/.env.example /var/www/.env
rm /var/www/.env.example
chmod -R 777 /var/www/storage
chmod -R 777 /var/www/public
php /var/www/artisan key:generate
