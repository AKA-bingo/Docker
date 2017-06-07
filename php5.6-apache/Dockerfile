FROM php:5.6-apache

MAINTAINER BinGo

#安装memcached、xdebug
RUN apt-get update && apt-get install -y zlib1g-dev libmemcached-dev \
    && pecl install memcached-2.2.0 xdebug-2.5.0 \
    && docker-php-ext-enable memcached xdebug

#安装xcache
RUN curl -fsSL 'https://xcache.lighttpd.net/pub/Releases/3.2.0/xcache-3.2.0.tar.gz' -o xcache.tar.gz \
    && mkdir -p xcache \
    && tar -xf xcache.tar.gz -C xcache --strip-components=1 \
    && rm xcache.tar.gz \
    && ( \
        cd xcache \
        && phpize \
        && ./configure --enable-xcache \
        && make -j$(nproc) \
        && make install \
    ) \
    && rm -r xcache \
    && docker-php-ext-enable xcache
    j
#站点激活
#RUN a2enmod rewrite && a2ensite && service apache2 restart

EXPOSE 80

CMD ["apache2-foreground"]