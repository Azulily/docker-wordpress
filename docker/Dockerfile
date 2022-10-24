FROM wordpress:6.0-php7.4-apache

RUN apt update && apt install -y \
    vim
RUN docker-php-ext-install pdo_mysql

# install xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN apt install git -y

RUN apt install -y \
    ruby \
    ruby-dev \
    rubygems \
    libsqlite3-dev \
  && apt-get autoremove \
  && apt-get clean
RUN gem install mailcatcher

COPY ./php.ini /usr/local/etc/php/

CMD ["apache2-foreground"]

