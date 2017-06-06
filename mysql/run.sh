docker run \
    -i \
    -t \
    -d \
    -p 3306:3306 \
    --name = mysql-server \
    -e MYSQL_ROOT_PASSWORD = my-secret-pw \
    -v e:/workspace/docker/mysql/data:/var/lib/mysql \
    hybingo/mysql:base