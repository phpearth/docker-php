FROM alpine:3.6

ADD https://alpine.php.earth/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub
RUN echo "https://alpine.php.earth" >> /etc/apk/repositories \
    && apk add --no-cache php7.1-fpm nginx \
    && mkdir -p /run/nginx \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
