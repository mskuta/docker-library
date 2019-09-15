FROM php:7
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN docker-php-ext-install pdo_mysql
RUN mkdir /opt/FreshRSS \
    && sh -c 'curl --location --show-error --silent https://codeload.github.com/FreshRSS/FreshRSS/tar.gz/master | tar -C/opt/FreshRSS --strip-components=1 -f- -xz'
CMD ["php", "-S", "0.0.0.0:80", "-t", "/opt/FreshRSS"]

