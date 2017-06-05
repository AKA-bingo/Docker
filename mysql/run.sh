docker run \
    -d \
    -it \
    -p 3306:3306 \
    --name=mysql-server \
    -e MYSQL_ROOT_PASSWORD=qweasd \
    -v e:/workspace/docker/mysql/data:/var/lib/mysql \
    hybingo/mysql:base