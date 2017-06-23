FROM phpearth/php:7.1-nginx

RUN apk add --no-cache php71-memcached

COPY ./.docker/app/ /
COPY ./ /var/www/html

#RUN chown -R 82 /var/www/html
