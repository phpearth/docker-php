# Docker for PHP developers

[![Build Status](https://img.shields.io/travis/php-earth/docker-php/master.svg?style=plastic)](https://travis-ci.org/php-earth/docker-php) [![Docker Automated build](https://img.shields.io/docker/automated/phpearth/php.svg?style=plastic)](https://hub.docker.com/r/phpearth/php/) [![MIT License](https://img.shields.io/github/license/php-earth/docker-php.svg?style=plastic "MIT License")](https://github.com/php-earth/docker-php/blob/master/LICENSE)

Carefully crafted Docker images for PHP developers with PHP 7.2, PHP 7.1, PHP 7.0, Nginx, OpenLiteSpeed, and Apache HTTP Server.

<div align="center">
  <img src="https://cdn.rawgit.com/php-earth/logo/master/png/indigo_205x250.png" alt="PHP.earth">
</div>

* Fast and simple PHP extensions installation
* Optional Composer installation
* Optional PHPUnit installation
* [runit](http://smarden.org/runit/) for running multiple services without overhead
* Alpine base image with [PHP.earth PHP repositories](https://php.earth/docs/linux/alpine)
* Optimized Docker image sizes
* Multiple PHP versions

## Documentation

Documentation with Docker and PHP recipes is available on [PHP.earth](https://php.earth/docs/docker).

## Docker tags

The following list contains all current Docker tags and what is included in each.

| System | Docker Tag | Features | Size |
| ------ | ---------- | -------- | ---- |
| **PHP 7.2.0**@Alpine 3.7 | [`latest`, `7.2`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2) | Small PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2.svg)](https://microbadger.com/images/phpearth/php:7.2 "Image size") |
| | [`7.2-cli`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-cli) | PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-cli.svg)](https://microbadger.com/images/phpearth/php:7.2-cli "Image size") |
| | [`7.2-litespeed`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-litespeed) | OpenLiteSpeed 1.4.28 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-litespeed.svg)](https://microbadger.com/images/phpearth/php:7.2-litespeed "Image size") |
| | [`7.2-nginx`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-nginx) | Nginx 1.12.2, FPM | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-nginx.svg)](https://microbadger.com/images/phpearth/php:7.2-nginx "Image size") |
| | [`7.2-apache`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-apache) | Apache 2.4.27 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-apache.svg)](https://microbadger.com/images/phpearth/php:7.2-apache "Image size") |
| | [`7.2-cgi`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-cgi) | PHP CGI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-cgi.svg)](https://microbadger.com/images/phpearth/php:7.2-cgi "Image size") |
| **PHP 7.1.12**@Alpine 3.7 | [`7.1`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1) | Small PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1.svg)](https://microbadger.com/images/phpearth/php:7.1 "Image size") |
| | [`7.1-cli`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-cli) | PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-cli.svg)](https://microbadger.com/images/phpearth/php:7.1-cli "Image size") |
| | [`7.1-litespeed`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-litespeed) | OpenLiteSpeed 1.4.28 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-litespeed.svg)](https://microbadger.com/images/phpearth/php:7.1-litespeed "Image size") |
| | [`7.1-nginx`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-nginx) | Nginx 1.12.2, FPM | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-nginx.svg)](https://microbadger.com/images/phpearth/php:7.1-nginx "Image size") |
| | [`7.1-apache`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-apache) | Apache 2.4.27 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-apache.svg)](https://microbadger.com/images/phpearth/php:7.1-apache "Image size") |
| | [`7.1-cgi`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-cgi) | PHP CGI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-cgi.svg)](https://microbadger.com/images/phpearth/php:7.1-cgi "Image size") |
| **PHP 7.0.26**@Alpine 3.7 | [`7.0`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.0) | Small PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0.svg)](https://microbadger.com/images/phpearth/php:7.0 "Image size") |
| | [`7.0-cli`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.0-cli) | PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-cli.svg)](https://microbadger.com/images/phpearth/php:7.0-cli "Image size") |
| | [`7.0-litespeed`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.0-litespeed) | OpenLiteSpeed 1.4.28 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-litespeed.svg)](https://microbadger.com/images/phpearth/php:7.0-litespeed "Image size") |
| | [`7.0-nginx`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.0-nginx) | Nginx 1.12.2, FPM | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-nginx.svg)](https://microbadger.com/images/phpearth/php:7.0-nginx "Image size") |
| | [`7.0-apache`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.0-apache) | Apache 2.4.27 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-apache.svg)](https://microbadger.com/images/phpearth/php:7.0-apache "Image size") |
| | [`7.0-cgi`](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.0-cgi) | PHP CGI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-cgi.svg)](https://microbadger.com/images/phpearth/php:7.0-cgi "Image size") |

Tags follow PHP release cycle and [PHP supported versions timeline](http://php.net/supported-versions.php).

| PHP     | Active Support Until | Security Support Until | Info |
| ------- | -------------------- | ---------------------- | ---- |
| **7.2** | 2019-11-30           | 2020-11-20             | Current recommended branch for production |
| **7.1** | 2018-12-01           | 2019-12-01             | Previous stable branch |
| **7.0** | 2017-12-03           | 2018-12-03             | Previous branch for legacy projects |

## Quick usage

### Nginx

`Dockerfile` for running Nginx HTTP server with PHP FPM:

```Dockerfile
FROM phpearth/php:7.2-nginx
```

Build Docker image and run Docker container:

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
FROM phpearth/php:7.2-nginx

RUN apk add --no-cache composer
```

### PHPUnit

To install PHPUnit:

```Dockerfile
FROM phpearth/php:7.2-nginx

RUN apk add --no-cache phpunit
```

### OpenLiteSpeed

To run OpenLiteSpeed web server:

```Dockerfile
FROM phpearth/php:7.2-litespeed
```

### PHP extensions

To install additional PHP extensions, you can use packages from the [PHP.earth Alpine repository](https://php.earth/docs/linux/alpine):

```Dockerfile
FROM phpearth/php:7.2-nginx

RUN apk add --no-cache php7.2-sodium php7.2-intl php7.2-pdo_mysql
```

or install them with `pecl`:

```bash
apk add --no-cache php7.2-dev gcc g++
pecl install {extension-name}
```

#### Missing extension?

In case you'd need an additional extension in the PHP.earth repository, [open an issue](https://github.com/php-earth/docker-php/issues).

### Docker Compose

Docker Compose simplifies usage of multiple containers of your application. In this example we'll run an Nginx web server with PHP 7.2 FPM with `docker-compose.yml` file. In a new project directory create a `Dockerfile`:

```Dockerfile
FROM phpearth/php:7.2-nginx
```

The `docker-compose.yml` file:

```yml
version: '3.3'

services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    volumes:
      - .:/var/www/html
    ports:
      - 80:80
```

The `index.php` file:

```php
<?php

phpinfo();
```

Finally we run:

```bash
docker-compose up
```

And there should be `phpinfo()` output visible on `http://localhost`. Make sure there isn't any other service listening on port 80 before running above command.

### PHP 7.0 and PHP 7.1

To use PHP 7.0 or 7.1 use Docker images with `7.0` or `7.1`:

```Dockerfile
FROM phpearth/php:7.1-nginx

RUN apk add --no-cache composer
```

## PHP.earth Alpine repository

These Docker images include the latest PHP versions and packages for Alpine Linux via the 3rd party [PHP.earth Alpine repository](https://php.earth/docs/linux/alpine).

```Dockerfile
FROM alpine:3.7

ADD https://repos.php.earth/alpine/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub
RUN echo "https://repos.php.earth/alpine" >> /etc/apk/repositories \
    && apk add --no-cache php7.2
```

PHP.earth Alpine packages are prefixed with `php7.2`, `php7.1`, and `php7.0`.

## Building Images

Images are automatically build on [Docker Hub](https://hub.docker.com/r/phpearth/php/).

Docker Cloud and therefore Docker Hub also provides
[overriding and customization](https://docs.docker.com/docker-cloud/builds/advanced/)
of various commands when building images automatically.

There are some hooks defined in the `docker/hooks` folder:

* `hooks/build` - executed when building image
* `hooks/post_push` - executed after building image, used to push additional tags
  to Docker Hub.

### Labels

[Labels](https://docs.docker.com/engine/userguide/labels-custom-metadata/) are
neat way to expose additional metadata about particular Docker object. We use
[Label Schema](http://label-schema.org/) when defining image labels:

* `build-date` - Date and time of the build. Defined as
  `org.label-schema.build-date=$BUILD_DATE`, where `$BUILD_DATE` is set dynamically
  via above `hooks/build` script
* `vcs-url` - Repository location on GitHub. Defined as
  `org.label-schema.vcs-url="https://github.com/php-earth/docker-php.git"`
* `vcs-ref` - Reference to commit in Git repository
* `schema-version` - Version of the Label Schema in use.
* `vendor` - Vendor name of the image creators.
* `name`
* `description`
* `url`

## License and contributing

[Contributions](https://github.com/php-earth/docker-php/blob/master/.github/CONTRIBUTING.md) are most welcome. This repository is released under the [MIT license](https://github.com/php-earth/docker-php/blob/master/LICENSE).
