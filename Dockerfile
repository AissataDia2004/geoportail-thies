FROM php:8.2-apache

# installer librairies PostgreSQL nécessaires
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pgsql

# copier le site
COPY . /var/www/html/

EXPOSE 80
