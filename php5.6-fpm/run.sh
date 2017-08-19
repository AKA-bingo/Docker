#!/usr/bin/env bash
docker run \
    -i \
    -t \
    -d \
    --name php-dev \
    --link mysql-dev:mysql-dev \
    -v e:/workspace/www:/var/www \
    hybingo/develop:php5.6-fpm