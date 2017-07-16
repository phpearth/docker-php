# 🐳 Docker for PHP developers

[![Build Status](https://img.shields.io/travis/php-earth/docker-php/master.svg?style=plastic)](https://travis-ci.org/php-earth/docker-php) [![Docker Automated build](https://img.shields.io/docker/automated/phpearth/php.svg?style=plastic)](https://hub.docker.com/r/phpearth/php/) [![MIT License](https://img.shields.io/github/license/php-earth/docker-php.svg?style=plastic "MIT License")](https://github.com/php-earth/docker-php/blob/master/LICENSE)

Carefully crafted Docker images for PHP developers with latest PHP versions 7.1 and upcoming 7.2, [Nginx](https://nginx.org/), [OpenLiteSpeed](http://open.litespeedtech.com/) and [Apache HTTP Server](https://httpd.apache.org/).

* Fast and simple PHP extensions installation
* Optional [Composer](https://getcomposer.org) installation
* [runit](http://smarden.org/runit/) for running multiple services without overhead.
* Alpine base image with PHP.earth Alpine PHP repositories
* Optimized Docker image sizes

## 📖 Documentation

A more detailed documentation with Docker and PHP recipes is available on [PHP.earth](https://php.earth/doc/docker).

## Docker tags

The following list contains all current Docker tags and what is included in each.

| System | Docker Tag | Features | Size |
| ------ | ---------- | -------- | ---- |
| **PHP 7.1.7**@Alpine 3.6 | [`latest`, `7.1`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1) | PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php.svg)](https://microbadger.com/images/phpearth/php "Image size") |
| | [`7.1-litespeed`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-litespeed) | OpenLiteSpeed 1.4.26 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-litespeed.svg)](https://microbadger.com/images/phpearth/php:7.1-litespeed "Image size") |
| | [`7.1-nginx`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-nginx) | Nginx 1.12.1, FPM | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-nginx.svg)](https://microbadger.com/images/phpearth/php:7.1-nginx "Image size") |
| | [`7.1-apache`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-apache) | Apache 2.4.26 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-apache.svg)](https://microbadger.com/images/phpearth/php:7.1-apache "Image size") |
| | [`7.1-cgi`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-cgi) | PHP CGI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-cgi.svg)](https://microbadger.com/images/phpearth/php:7.1-cgi "Image size") |
| **PHP 7.2.0alpha3**@Alpine 3.6 | [`7.2`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2) | PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2.svg)](https://microbadger.com/images/phpearth/php:7.2 "Image size") |
| | [`7.2-litespeed`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-litespeed) | OpenLiteSpeed 1.4.26 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-litespeed.svg)](https://microbadger.com/images/phpearth/php:7.2-litespeed "Image size") |
| | [`7.2-nginx`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-nginx) | Nginx 1.12.1, FPM | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-nginx.svg)](https://microbadger.com/images/phpearth/php:7.2-nginx "Image size") |
| | [`7.2-apache`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-apache) | Apache 2.4.26 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-apache.svg)](https://microbadger.com/images/phpearth/php:7.2-apache "Image size") |
| | [`7.2-cgi`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-cgi) | PHP CGI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-cgi.svg)](https://microbadger.com/images/phpearth/php:7.2-cgi "Image size") |

Tags follow PHP release cycle and [PHP supported versions timeline](http://php.net/supported-versions.php).

| PHP | Active Support Until | Security Support Until |
| --- | -------------------- | ---------------------- |
| 7.1 | 2018-12-01           | 2019-12-01             |
| 7.2 | TBD                  | TBD                    |

## Quick usage

For using these images you'll usually want to create a `Dockerfile` or go further and use Docker Compose to simplify usage of multiple containers for your application.

### Nginx

For example, to run an Nginx HTTP server with PHP FPM, create a `Dockerfile`:

```Dockerfile
FROM phpearth/php:7.1-nginx
```

And then build Docker image and run Docker container:

```bash
docker build -t custom-php .
docker run --name custom-php-container -p 80:80 -d custom-php
```

### PHP CLI

To run a CLI PHP script:

```bash
docker run -it --rm -v `pwd`:/usr/src/myapp -w /usr/src/myapp phpearth/php php script.php
```

### Composer

To install Composer:

```Dockerfile
FROM phpearth/php:7.1-nginx

RUN apk add --no-cache php7.1-composer
```

### PHP extensions

To install additional PHP extensions, you can use our packages from the [PHP.earth Alpine](https://alpine.php.earth) repository:

```Dockerfile
FROM phpearth/php:7.1-nginx

RUN apk add --no-cache php7.1-sodium php7.1-intl php7.1-pdo_mysql
```

### PHP 7.2

To use PHP 7.2 images just prepend the Docker tag name with `7.2`:

* `phpearth/php:7.2`
* `phpearth/php:7.2-apache`
* `phpearth/php:7.2-cgi`
* `phpearth/php:7.2-nginx`
* `phpearth/php:7.2-litespeed`

### OpenLiteSpeed

To run OpenLiteSpeed web server create the following `Dockerfile`:

```Dockerfile
FROM phpearth/php:7.1-litespeed
```

## PHP.earth Alpine repository

These Docker images include the latest PHP versions and packages for Alpine Linux with [PHP.earth Alpine repository](https://php.earth/alpine).

```Dockerfile
FROM alpine:3.6

ADD https://alpine.php.earth/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub
RUN echo "https://alpine.php.earth" >> /etc/apk/repositories \
    && apk add --no-cache php7.1
```

PHP.earth Alpine packages are prefixed with `php7.1` and `php7.2`:

```bash
apk search --no-cache php7.1*
```

## Tests

[Goss](https://github.com/aelsabbahy/goss) is required to run tests:

```bash
make test
```

## License and contributing

[Contributions](https://github.com/php-earth/docker-php/blob/master/CONTRIBUTING.md) are most welcome. This repository is released under the [MIT license](https://github.com/php-earth/docker-php/blob/master/LICENSE).
