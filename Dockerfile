FROM php:8.0-fpm

# Install nginx and supervisor
RUN apt-get update && apt-get install -y nginx supervisor

# Kopiere nginx config
COPY docker/default.conf /etc/nginx/sites-available/default

# Kopiere Supervisor config
COPY docker/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Arbeitsverzeichnis
WORKDIR /var/www/html

COPY app/ .

EXPOSE 80

CMD ["/usr/bin/supervisord"]
