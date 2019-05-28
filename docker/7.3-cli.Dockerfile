FROM alpine:3.9

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/phpearth/docker-php.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vendor="PHP.earth" \
      org.label-schema.name="docker-php" \
      org.label-schema.description="Docker For PHP Developers - Docker image with PHP CLI 7.3, additional PHP extensions, and Alpine" \
      org.label-schema.url="https://github.com/phpearth/docker-php"

# PHP_INI_DIR to be symmetrical with official php docker image
ENV PHP_INI_DIR /etc/php/7.3

# When using Composer, disable the warning about running commands as root/super user
ENV COMPOSER_ALLOW_SUPERUSER=1

# Persistent runtime dependencies
ARG DEPS="\
        php7.3 \
        php7.3-phar \
        php7.3-bcmath \
        php7.3-calendar \
        php7.3-mbstring \
        php7.3-exif \
        php7.3-ftp \
        php7.3-openssl \
        php7.3-zip \
        php7.3-sysvsem \
        php7.3-sysvshm \
        php7.3-sysvmsg \
        php7.3-shmop \
        php7.3-sockets \
        php7.3-zlib \
        php7.3-bz2 \
        php7.3-curl \
        php7.3-simplexml \
        php7.3-xml \
        php7.3-opcache \
        php7.3-dom \
        php7.3-xmlreader \
        php7.3-xmlwriter \
        php7.3-tokenizer \
        php7.3-ctype \
        php7.3-session \
        php7.3-fileinfo \
        php7.3-iconv \
        php7.3-json \
        php7.3-posix \
        curl \
        ca-certificates \
"

# PHP.earth Alpine repository for better developer experience
ADD https://repos.php.earth/alpine/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub

RUN set -x \
    && echo "https://repos.php.earth/alpine/v3.9" >> /etc/apk/repositories \
    && apk add --no-cache $DEPS

CMD ["php", "-a"]
