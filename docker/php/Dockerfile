FROM php:7.4-fpm
RUN apt-get update && apt-get install -y git zip unzip \
&& docker-php-ext-install pdo pdo_mysql

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- \
	--install-dir=/usr/local/bin \
	--filename=composer