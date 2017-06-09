#!/usr/bin/env bash
docker run \
    -i \
    -t \
    -d \
    --name php-dev \
    --link mysql-dev:mysql-dev \
    -v e:/workspace/www/LSB:/var/www/html \
    hybingo/develop:php5.6-fpm
