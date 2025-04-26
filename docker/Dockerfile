# Basis: PHP-FPM
FROM php:8.0-fpm

WORKDIR /var/www/html

COPY app/ .

# Flag erstellen (optional)
RUN mkdir -p /docker && echo "Image built at $(date)" > /docker/is_docker.txt

EXPOSE 9000

CMD ["php-fpm"]
