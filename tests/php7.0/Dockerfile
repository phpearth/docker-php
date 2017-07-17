FROM alpine:3.6

ADD https://alpine.php.earth/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub

RUN set -x \
    && echo "https://alpine.php.earth" >> /etc/apk/repositories \
    && apk add --no-cache \
        php7.0 \
        php7.0-bcmath \
        php7.0-calendar \
        php7.0-mbstring \
        php7.0-exif \
        php7.0-ftp \
        php7.0-openssl \
        php7.0-zip \
        php7.0-sysvsem \
        php7.0-sysvshm \
        php7.0-sysvmsg \
        php7.0-shmop \
        php7.0-sockets \
        php7.0-zlib \
        php7.0-bz2 \
        php7.0-curl \
        php7.0-simplexml \
        php7.0-xml \
        php7.0-opcache \
        php7.0-dom \
        php7.0-xmlreader \
        php7.0-xmlwriter \
        php7.0-tokenizer \
        php7.0-ctype \
        php7.0-session \
        php7.0-fileinfo \
        php7.0-iconv \
        php7.0-json \
        php7.0-posix \
        php7.0-apcu \
        php7.0-imagick \
        php7.0-sodium \
        php7.0-memcached \
        php7.0-mongodb \
        php7.0-redis \
        php7.0-swoole \
        php7.0-xdebug
