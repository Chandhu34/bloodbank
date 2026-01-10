FROM php:8.1-apache-bookworm

RUN docker-php-ext-install mysqli \
    && rm -rf /var/lib/apt/lists/*

COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
