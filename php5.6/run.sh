docker run 
    -d \
    -it \
    -p 80:80 \
    --name=php-dev \
    -v e:/workspace/www/LSB:/var/www/html \
    hybingo/php:5.6-apache