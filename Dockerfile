FROM php:8.2-apache-alpine
RUN docker-php-ext-install mysqli
COPY . /var/www/html/

