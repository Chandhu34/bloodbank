FROM php:8.2-apache-bookworm-slim

RUN docker-php-ext-install mysqli \
    && rm -rf /var/lib/apt/lists/* /tmp/*

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
