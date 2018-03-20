FROM php:7.1-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client gnupg gnupg2 \
    && docker-php-ext-install pdo_mysql

# Install Node
RUN cd ~/
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs

WORKDIR /var/www
