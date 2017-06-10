#!/usr/bin/env bash
docker run \
    -i \
    -t \
    -d \
    -p 80:80 \
    --name php-dev \
    --privileged=true
    --link mysql-dev:mysql-dev \
    -v e:/workspace/www/LSB/:/var/www/html \
    -v e:/workspace/docker/php5.6/sites-available:/etc/apache2/sites-available \
    hybingo/develop:php5.6-apache