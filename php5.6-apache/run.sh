docker run 
    -i \
    -t \
    -d \
    -p 80:80 \
    --name=php-dev \
    -v e:/workspace/www/LSB/:/var/www/html \
    -v e:/workspace/docker/php5.6/site.conf:/etc/apache2/site-available/000-default.conf
    hybingo/develop:php-5.6-apache apache2-foreground