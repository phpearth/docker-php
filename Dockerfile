FROM debian:jessie-slim

MAINTAINER Peter Kokot

ENV PHP_INI_DIR /usr/local/etc/php
ENV PHP_CFLAGS="-fstack-protector-strong -fpic -fpie -O2"
ENV PHP_CPPFLAGS="$PHP_CFLAGS"
ENV PHP_LDFLAGS="-Wl,-O1 -Wl,--hash-style=both -pie"

ENV FETCH_DEPS \
        wget

# Persistent runtime dependencies
ENV PHP_DEPS \
        libedit2 \
        ca-certificates \
        zip \
        unzip \
        git \
        supervisor \
        libmcrypt4 \
        libicu52 \
        libxslt1.1 \
        libxslt1-dev \
        libjpeg62-turbo \
        libfreetype6 \
        libxml2 \
        libxml2-dev

# PHP build dependencies which get removed
ENV PHP_BUILD_DEPS \
        build-essential \
        autoconf \
        automake \
        libtool \
        bison \
        re2c \
        pkg-config \
        libc-dev \
        libedit-dev \
        libcurl4-openssl-dev \
        libfreetype6-dev \
        libgd-dev \
        libbz2-dev \
        libfcgi-dev \
        libfcgi0ldbl \
        libmcrypt-dev \
        libkrb5-dev \
        libpq-dev \
        libicu-dev \
        rcs \
        libpcre3-dev \
        libexpat1-dev \
        zlib1g-dev \
        libpng-dev

RUN apt-get update && apt-get -y install $FETCH_DEPS curl ca-certificates --no-install-recommends \
    && echo 'deb http://ftp.debian.org/debian jessie-backports main' >> /etc/apt/sources.list \
    && echo 'deb http://packages.dotdeb.org jessie all' | tee --append /etc/apt/sources.list \
    && echo 'deb-src http://packages.dotdeb.org jessie all' | tee --append /etc/apt/sources.list \
    && echo 'deb http://packages.dotdeb.org jessie-nginx-http2 all' | tee --append /etc/apt/sources.list \
    && echo 'deb-src http://packages.dotdeb.org jessie-nginx-http2 all' | tee --append /etc/apt/sources.list \
    && wget https://www.dotdeb.org/dotdeb.gpg \
    && apt-key add dotdeb.gpg \
    && apt-get update \
    && apt-get -y install openssl libssl-dev -t jessie-backports --no-install-recommends \
    && apt-get -y install nginx --no-install-recommends \
    # PHP
    && mkdir -p $PHP_INI_DIR/conf.d \
    && apt-get install -y $PHP_DEPS $PHP_BUILD_DEPS --no-install-recommends \
    && cd /opt \
    && curl -o php-7.1.0.tar.xz -OL http://fr2.php.net/get/php-7.1.0.tar.xz/from/this/mirror \
    && export CFLAGS="$PHP_CFLAGS" \
                  CPPFLAGS="$PHP_CPPFLAGS" \
                  LDFLAGS="$PHP_LDFLAGS" \
    && tar -Jxf php-7.1.0.tar.xz \
    && rm php-7.1.0.tar.xz \
    && cd php-7.1.0 \
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
        --with-mcrypt \
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
    && make -j "$(nproc)" \
    && make install \
    && { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } \
    && make clean \
    && cp /usr/local/etc/php-fpm.d/www.conf.default /usr/local/etc/php-fpm.d/www.conf \
    && mkdir /run/php \
    && echo "daemon off;" >> /etc/nginx/nginx.conf \
    # Composer
    && php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log \
    # Remove dependencies
    && apt-get purge -y --auto-remove $PHP_BUILD_DEPS $FETCH_DEPS \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /opt/php-7.1.0

COPY etc /etc
COPY usr ./usr

CMD ["/usr/bin/supervisord"]
