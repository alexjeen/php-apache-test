FROM php:7.4-apache

# install some extensions
RUN pecl install redis
RUN pecl install mongodb

# enable them
RUN docker-php-ext-enable redis mongodb

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Copy phpinfo file in
COPY src/ /var/www/html/
