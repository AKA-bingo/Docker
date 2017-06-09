#!/usr/bin/env bash
docker run \
    -i \
    -t \
    -d \
    -p 80:80 \
    --name nginx-dev
    -v e:/workspace/docker/nginx1.13.1/conf.d:/etc/nginx/conf.d \
    --link php-dev:php-dev \
    --volumes-from php-dev \
    hybingo/develop:nginx-1.13.1