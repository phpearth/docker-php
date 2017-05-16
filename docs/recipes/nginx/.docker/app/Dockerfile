FROM petk/php

RUN install-php-ext memcached

COPY ./.docker/app/ /
COPY ./ /var/www/html

#RUN chown -R 82 /var/www/html
