FROM alpine:3.6

ENV GIT_DISCOVERY_ACROSS_FILESYSTEM=1

RUN apk add --no-cache alpine-sdk \
    && adduser -D -g '' -u 1000 -G abuild packager \
    && echo "packager ALL=(ALL) ALL" >> /etc/sudoers \
    && echo "packager ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers \
    && echo "/repo/main" | tee -a /etc/apk/repositories \
    # For building some packages (litespeeed and pear) the php command is used
    # and we'll use the latest development php.ini files to show possible warnings
    # and notices
    && mkdir -p /etc/php/7.0 /etc/php/7.1 /etc/php/7.2 \
    && curl https://raw.githubusercontent.com/php/php-src/PHP-7.0/php.ini-development --output /etc/php/7.0/php.ini \
    && curl https://raw.githubusercontent.com/php/php-src/PHP-7.1/php.ini-development --output /etc/php/7.1/php.ini \
    && curl https://raw.githubusercontent.com/php/php-src/PHP-7.2/php.ini-development --output /etc/php/7.2/php.ini

COPY . /

USER packager
