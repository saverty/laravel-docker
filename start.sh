#!/bin/sh
echo "Laravel start"

docker run docker/compose:1.13.0 version
docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:/rootfs/$PWD" \
    -w="/rootfs/$PWD" \
    docker/compose:1.13.0 up

source ~/.bashrc
docker-compose build
docker-compose up


#php /usr/local/bin/composer.phar install
cp /var/www/.env.example /var/www/.env
rm /var/www/.env.example
chmod -R 777 /var/www/storage
chmod -R 777 /var/www/public
php /var/www/artisan key:generate
