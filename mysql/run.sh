#!/usr/bin/env bash
docker run \
    -i \
    -t \
    -d \
    -p 3306:3306 \
    --name mysql-dev \
    -e MYSQL_ROOT_PASSWORD=my-secret-pw \
    -v e:/workspace/docker/mysql/data:/var/lib/mysql \
    hybingo/develop:mysql5.6