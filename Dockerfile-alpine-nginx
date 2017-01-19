FROM alpine:3.5

MAINTAINER Peter Kokot

# PHP download helper script
COPY download-php.sh /usr/src/download-php.sh

ENV PHP_INI_DIR /usr/local/etc/php
ENV PHP_CFLAGS="-fstack-protector-strong -fpic -fpie -O2"
ENV PHP_CPPFLAGS="$PHP_CFLAGS"
ENV PHP_LDFLAGS="-Wl,-O1 -Wl,--hash-style=both -pie"

ENV FETCH_DEPS \
        wget

# Persistent runtime dependencies
ENV PHP_DEPS \
        libedit \
        zip \
        unzip \
        git \
        supervisor \
        icu \
        gettext \
        libxslt \
        libjpeg-turbo \
        freetype \
        libxml2 \
        curl \
        nginx \
        nginx-mod-http-headers-more

# PHP build dependencies which get removed
ENV BUILD_DEPS \
        autoconf \
        file \
        g++ \
        gcc \
        make \
        automake \
        libtool \
        bison \
        re2c \
        pkgconf \
        libc-dev \
        libedit-dev \
        curl-dev \
        freetype-dev \
        gd-dev \
        bzip2-dev \
        fcgi-dev \
        krb5-dev \
        libpq \
        icu-dev \
        gettext-dev \
        pcre-dev \
        expat-dev \
        zlib-dev \
        libpng-dev \
        libxslt-dev \
        libxml2-dev \
        libjpeg-turbo-dev

RUN set -x \
	  && addgroup -g 82 -S www-data \
	  && adduser -u 82 -D -S -G www-data www-data \
    && apk add --no-cache ca-certificates openssl \
    && apk add --no-cache --virtual .fetch-deps $FETCH_DEPS \
    # PHP
    && mkdir -p $PHP_INI_DIR/conf.d \
    && apk add --no-cache $PHP_DEPS \
    && apk add --no-cache --virtual .build-deps $BUILD_DEPS \
    && cd /usr/src \
    && /usr/src/download-php.sh \
    && tar -Jxf php.tar.xz \
    && rm php.tar.xz \
    && export CFLAGS="$PHP_CFLAGS" \
              CPPFLAGS="$PHP_CPPFLAGS" \
              LDFLAGS="$PHP_LDFLAGS" \
    && cd php-* \
    && ./buildconf --force \
    && ./configure \
        --with-config-file-path="$PHP_INI_DIR" \
        --with-config-file-scan-dir="$PHP_INI_DIR/conf.d" \
        --disable-cgi \
        --with-pdo-mysql \
        --without-sqlite3 \
        --without-pdo-sqlite \
        --with-zlib-dir \
        --with-freetype-dir \
        --enable-mysqlnd \
        --enable-mbstring \
        --with-libxml-dir=/usr \
        --enable-soap \
        --enable-calendar \
        --with-curl \
        --with-libedit \
        --with-zlib \
        --with-gd \
        --disable-rpath \
        --enable-inline-optimization \
        --with-bz2 \
        --enable-sockets \
        --enable-sysvsem \
        --enable-sysvshm \
        --enable-mbregex \
        --enable-exif \
        --enable-bcmath \
        --with-mhash \
        --enable-zip \
        --with-pcre-regex \
        --with-mysqli \
        --with-mysql-sock=/var/run/mysqld/mysqld.sock \
        --with-jpeg-dir=/usr \
        --with-png-dir=/usr \
        --enable-gd-native-ttf \
        --with-openssl \
        --with-fpm-user=www-data \
        --with-fpm-group=www-data \
        --with-libdir=/lib/x86_64-linux-gnu \
        --enable-ftp \
        --with-kerberos \
        --with-gettext \
        --with-xsl \
        --enable-opcache \
        --enable-intl \
        --enable-fpm \
    && make -j "$(getconf _NPROCESSORS_ONLN)" \
    && make install \
    && { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } \
    && make clean \
    && cp /usr/local/etc/php-fpm.d/www.conf.default /usr/local/etc/php-fpm.d/www.conf \
    && mkdir /run/php && mkdir /run/nginx \
    && echo "daemon off;" >> /etc/nginx/nginx.conf \
    # Remove dependencies
    && rm -rf /usr/src/* \
    && apk del .build-deps .fetch-deps \
    # Composer
    && php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

COPY alpine-nginx/etc /etc
COPY alpine-nginx/usr /usr

CMD ["/usr/bin/supervisord"]
