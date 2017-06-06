docker run 
    -i \
    -t \
    -d \
    -p 80:80 \
    --name = php-dev \
    -v src/:/var/www/html \
    hybingo/php:5.6-apache