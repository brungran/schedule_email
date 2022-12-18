FROM php:8-apache

# ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
# RUN chmod $USER+rx /usr/local/bin/install-php-extensions
# RUN install-php-extensions amqp
RUN docker-php-ext-install sockets pdo_mysql
RUN apt-get update && apt-get install -y zip unzip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer