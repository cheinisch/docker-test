# Basis: nginx
FROM nginx:stable

COPY docker/default.conf /etc/nginx/conf.d/default.conf
