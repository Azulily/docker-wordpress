FROM wordpress:6.2-php8.0-apache
                
RUN apt update && apt install -y \
    vim
RUN docker-php-ext-install pdo_mysql

# install xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN apt install git -y

CMD ["apache2-foreground"]

