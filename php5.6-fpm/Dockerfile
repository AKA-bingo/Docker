FROM php:5.6-fpm

MAINTAINER BinGo

#安装redis
RUN pecl install redis-3.1.0 \
    && docker-php-ext-enable redis

#安装xdebug
RUN pecl install xdebug-2.5.0 \
    && docker-php-ext-enable xdebug

#安装memcached
RUN apt-get update && apt-get install -y zlib1g-dev libmemcached-dev \
    && pecl install memcached-2.2.0 \
    && docker-php-ext-enable memcached

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

VOLUME /var/www/html

EXPOSE 9000

CMD ["php-fpm"]