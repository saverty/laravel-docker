FROM php:7-fpm


RUN apt-get update && apt-get install -y libmcrypt-dev \
    && php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer \
    && chmod +x /usr/local/bin/composer \
    && apt-get install -y git \



