# Docker for PHP developers

[![Build Status](https://img.shields.io/travis/phpearth/docker-php/master.svg?style=plastic)](https://travis-ci.org/phpearth/docker-php) [![Docker Automated build](https://img.shields.io/docker/automated/phpearth/php.svg?style=plastic)](https://hub.docker.com/r/phpearth/php/) [![MIT License](https://img.shields.io/github/license/phpearth/docker-php.svg?style=plastic "MIT License")](https://github.com/phpearth/docker-php/blob/master/LICENSE)

Carefully crafted Docker images for PHP developers with PHP 7.3, PHP 7.2, PHP 7.1, PHP 7.0, Nginx, OpenLiteSpeed, Apache HTTP Server, and Lighttpd.

![PHP.earth](https://cdn.rawgit.com/phpearth/logo/master/svg/indigo_300x300.svg "PHP.earth")

* Fast and simple PHP extensions installation
* Optional Composer installation
* Optional PHPUnit installation
* [runit](http://smarden.org/runit/) for running multiple services without overhead
* Alpine base image with [PHP.earth PHP repositories](https://docs.php.earth/linux/alpine)
* Optimized Docker image sizes
* Multiple PHP versions

## Documentation

Documentation with Docker and PHP recipes is available on [PHP.earth](https://docs.php.earth/docker).

## Docker tags

The following list contains all current Docker tags and what is included in each.

| System | Docker Tag | Features | Size |
| ------ | ---------- | -------- | ---- |
| **PHP 7.4.0alpha1**@Alpine 3.9.4 | [`7.4`](https://github.com/phpearth/docker-php/tree/master/docker/7.4.Dockerfile) | Small PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.4.svg)](https://microbadger.com/images/phpearth/php:7.4 "Image size") |
| | [`7.4-cli`](https://github.com/phpearth/docker-php/tree/master/docker/7.4-cli.Dockerfile) | PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.4-cli.svg)](https://microbadger.com/images/phpearth/php:7.4-cli "Image size") |
| | [`7.4-lighttpd`](https://github.com/phpearth/docker-php/tree/master/docker/7.4-lighttpd.Dockerfile) | Lighttpd 1.4.52 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.4-lighttpd.svg)](https://microbadger.com/images/phpearth/php:7.4-lighttpd "Image size") |
| | [`7.4-litespeed`](https://github.com/phpearth/docker-php/tree/master/docker/7.4-litespeed.Dockerfile) | OpenLiteSpeed 1.5.0 RC3 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.4-litespeed.svg)](https://microbadger.com/images/phpearth/php:7.4-litespeed "Image size") |
| | [`7.4-nginx`](https://github.com/phpearth/docker-php/tree/master/docker/7.4-nginx.Dockerfile) | Nginx 1.14.2, FPM | [![](https://images.microbadger.com/badges/image/phpearth/php:7.4-nginx.svg)](https://microbadger.com/images/phpearth/php:7.4-nginx "Image size") |
| | [`7.4-apache`](https://github.com/phpearth/docker-php/tree/master/docker/7.4-apache.Dockerfile) | Apache 2.4.39 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.4-apache.svg)](https://microbadger.com/images/phpearth/php:7.4-apache "Image size") |
| | [`7.4-cgi`](https://github.com/phpearth/docker-php/tree/master/docker/7.4-cgi.Dockerfile) | PHP CGI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.4-cgi.svg)](https://microbadger.com/images/phpearth/php:7.4-cgi "Image size") |
| **PHP 7.3.4**@Alpine 3.9.3 | [`latest`, `7.3`](https://github.com/phpearth/docker-php/tree/master/docker/7.3.Dockerfile) | Small PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.3.svg)](https://microbadger.com/images/phpearth/php:7.3 "Image size") |
| | [`7.3-cli`](https://github.com/phpearth/docker-php/tree/master/docker/7.3-cli.Dockerfile) | PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.3-cli.svg)](https://microbadger.com/images/phpearth/php:7.3-cli "Image size") |
| | [`7.3-lighttpd`](https://github.com/phpearth/docker-php/tree/master/docker/7.3-lighttpd.Dockerfile) | Lighttpd 1.4.52 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.3-lighttpd.svg)](https://microbadger.com/images/phpearth/php:7.3-lighttpd "Image size") |
| | [`7.3-litespeed`](https://github.com/phpearth/docker-php/tree/master/docker/7.3-litespeed.Dockerfile) | OpenLiteSpeed 1.5.0 RC3 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.3-litespeed.svg)](https://microbadger.com/images/phpearth/php:7.3-litespeed "Image size") |
| | [`7.3-nginx`](https://github.com/phpearth/docker-php/tree/master/docker/7.3-nginx.Dockerfile) | Nginx 1.14.2, FPM | [![](https://images.microbadger.com/badges/image/phpearth/php:7.3-nginx.svg)](https://microbadger.com/images/phpearth/php:7.3-nginx "Image size") |
| | [`7.3-apache`](https://github.com/phpearth/docker-php/tree/master/docker/7.3-apache.Dockerfile) | Apache 2.4.38 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.3-apache.svg)](https://microbadger.com/images/phpearth/php:7.3-apache "Image size") |
| | [`7.3-cgi`](https://github.com/phpearth/docker-php/tree/master/docker/7.3-cgi.Dockerfile) | PHP CGI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.3-cgi.svg)](https://microbadger.com/images/phpearth/php:7.3-cgi "Image size") |
| **PHP 7.2.17**@Alpine 3.9.3 | [`7.2`](https://github.com/phpearth/docker-php/tree/master/docker/7.2.Dockerfile) | Small PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2.svg)](https://microbadger.com/images/phpearth/php:7.2 "Image size") |
| | [`7.2-cli`](https://github.com/phpearth/docker-php/tree/master/docker/7.2-cli.Dockerfile) | PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-cli.svg)](https://microbadger.com/images/phpearth/php:7.2-cli "Image size") |
| | [`7.2-lighttpd`](https://github.com/phpearth/docker-php/tree/master/docker/7.2-lighttpd.Dockerfile) | Lighttpd 1.4.52 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-lighttpd.svg)](https://microbadger.com/images/phpearth/php:7.2-lighttpd "Image size") |
| | [`7.2-litespeed`](https://github.com/phpearth/docker-php/tree/master/docker/7.2-litespeed.Dockerfile) | OpenLiteSpeed 1.5.0 RC3 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-litespeed.svg)](https://microbadger.com/images/phpearth/php:7.2-litespeed "Image size") |
| | [`7.2-nginx`](https://github.com/phpearth/docker-php/tree/master/docker/7.2-nginx.Dockerfile) | Nginx 1.14.2, FPM | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-nginx.svg)](https://microbadger.com/images/phpearth/php:7.2-nginx "Image size") |
| | [`7.2-apache`](https://github.com/phpearth/docker-php/tree/master/docker/7.2-apache.Dockerfile) | Apache 2.4.38 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-apache.svg)](https://microbadger.com/images/phpearth/php:7.2-apache "Image size") |
| | [`7.2-cgi`](https://github.com/phpearth/docker-php/tree/master/docker/7.2-cgi.Dockerfile) | PHP CGI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.2-cgi.svg)](https://microbadger.com/images/phpearth/php:7.2-cgi "Image size") |
| **PHP 7.1.28**@Alpine 3.9.3 | [`7.1`](https://github.com/phpearth/docker-php/tree/master/docker/7.1.Dockerfile) | Small PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1.svg)](https://microbadger.com/images/phpearth/php:7.1 "Image size") |
| | [`7.1-cli`](https://github.com/phpearth/docker-php/tree/master/docker/7.1-cli.Dockerfile) | PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-cli.svg)](https://microbadger.com/images/phpearth/php:7.1-cli "Image size") |
| | [`7.1-lighttpd`](https://github.com/phpearth/docker-php/tree/master/docker/7.1-lighttpd.Dockerfile) | Lighttpd 1.4.52 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-lighttpd.svg)](https://microbadger.com/images/phpearth/php:7.1-lighttpd "Image size") |
| | [`7.1-litespeed`](https://github.com/phpearth/docker-php/tree/master/docker/7.1-litespeed.Dockerfile) | OpenLiteSpeed 1.5.0 RC3 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-litespeed.svg)](https://microbadger.com/images/phpearth/php:7.1-litespeed "Image size") |
| | [`7.1-nginx`](https://github.com/phpearth/docker-php/tree/master/docker/7.1-nginx.Dockerfile) | Nginx 1.14.2, FPM | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-nginx.svg)](https://microbadger.com/images/phpearth/php:7.1-nginx "Image size") |
| | [`7.1-apache`](https://github.com/phpearth/docker-php/tree/master/docker/7.1-apache.Dockerfile) | Apache 2.4.38 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-apache.svg)](https://microbadger.com/images/phpearth/php:7.1-apache "Image size") |
| | [`7.1-cgi`](https://github.com/phpearth/docker-php/tree/master/docker/7.1-cgi.Dockerfile) | PHP CGI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.1-cgi.svg)](https://microbadger.com/images/phpearth/php:7.1-cgi "Image size") |
| **PHP 7.0.33**@Alpine 3.7.3 | [`7.0`](https://github.com/phpearth/docker-php/tree/master/docker/7.0.Dockerfile) | Small PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0.svg)](https://microbadger.com/images/phpearth/php:7.0 "Image size") |
| | [`7.0-cli`](https://github.com/phpearth/docker-php/tree/master/docker/7.0-cli.Dockerfile) | PHP CLI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-cli.svg)](https://microbadger.com/images/phpearth/php:7.0-cli "Image size") |
| | [`7.0-lighttpd`](https://github.com/phpearth/docker-php/tree/master/docker/7.0-lighttpd.Dockerfile) | Lighttpd 1.4.48 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-lighttpd.svg)](https://microbadger.com/images/phpearth/php:7.0-lighttpd "Image size") |
| | [`7.0-litespeed`](https://github.com/phpearth/docker-php/tree/master/docker/7.0-litespeed.Dockerfile) | OpenLiteSpeed 1.5.0 RC3 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-litespeed.svg)](https://microbadger.com/images/phpearth/php:7.0-litespeed "Image size") |
| | [`7.0-nginx`](https://github.com/phpearth/docker-php/tree/master/docker/7.0-nginx.Dockerfile) | Nginx 1.12.2, FPM | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-nginx.svg)](https://microbadger.com/images/phpearth/php:7.0-nginx "Image size") |
| | [`7.0-apache`](https://github.com/phpearth/docker-php/tree/master/docker/7.0-apache.Dockerfile) | Apache 2.4.38 | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-apache.svg)](https://microbadger.com/images/phpearth/php:7.0-apache "Image size") |
| | [`7.0-cgi`](https://github.com/phpearth/docker-php/tree/master/docker/7.0-cgi.Dockerfile) | PHP CGI | [![](https://images.microbadger.com/badges/image/phpearth/php:7.0-cgi.svg)](https://microbadger.com/images/phpearth/php:7.0-cgi "Image size") |

Tags follow PHP release cycle and [PHP supported versions timeline](http://php.net/supported-versions.php).

| PHP     | Active Support Until | Security Support Until | Info |
| ------- | -------------------- | ---------------------- | ---- |
| **7.4** | TBD                  | TBD                    | Development 7.4 branch for testing |
| **7.3** | TBD                  | TBD                    | Current recommended branch for production |
| **7.2** | 2019-11-30           | 2020-11-20             | Previous stable branch |
| **7.1** | 2018-12-01           | 2019-12-01             | Previous branch for legacy projects |
| **7.0** | 2017-12-03           | 2018-12-03             | Previous branch for legacy projects, not supported anymore |

## Quick usage

### Nginx

`Dockerfile` for running Nginx HTTP server with PHP FPM:

```Dockerfile
FROM phpearth/php:7.3-nginx
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
FROM phpearth/php:7.3-nginx

RUN apk add --no-cache composer
```

### PHPUnit

To install PHPUnit:

```Dockerfile
FROM phpearth/php:7.3-nginx

RUN apk add --no-cache phpunit
```

### OpenLiteSpeed

To run OpenLiteSpeed web server:

```Dockerfile
FROM phpearth/php:7.3-litespeed
```

### Lighttpd

To run Lighttpd web server:

```Dockerfile
FROM phpearth/php:7.3-lighttpd
```

### PHP extensions

To install additional PHP extensions, you can use packages from the [PHP.earth Alpine repository](https://docs.php.earth/linux/alpine):

```Dockerfile
FROM phpearth/php:7.3-nginx

RUN apk add --no-cache php7.3-sodium php7.3-intl php7.3-pdo_mysql
```

or install them with `pecl`:

```bash
apk add --no-cache php7.3-dev gcc g++
pecl install {extension-name}
```

### PHP ini settings

To configure extra [php.ini](https://www.php.net/manual/en/ini.php): settings,
create application specific `php.ini` and copy the file into docker image:


```ini
# php.ini
memory_limit = 512M
```

```Dockerfile
FROM phpearth/php:7.3-nginx

COPY php.ini $PHP_INI_DIR/conf.d/my-app.ini
```

#### Missing extension?

In case you'd need an additional extension in the PHP.earth repository, [open an issue](https://github.com/phpearth/docker-php/issues).

### Docker Stack

Docker Stack is way of orchestration of Docker services and simplifies running multiple services of your application. In this example we'll run an Nginx web server with PHP 7.3 FPM with `docker-compose.yml` file. In a new project directory create a `Dockerfile`:

```Dockerfile
FROM phpearth/php:7.3-nginx
```

The `docker-compose.yml` file:

```yml
version: '3.3'

services:
  app:
    image: my-dev-image
    volumes:
      - .:/var/www/html
    ports:
      - mode: host
        target: 80
        published: 80
```

The `index.php` file:

```php
<?php

phpinfo();
```

Finally we run:

```bash
# Initialize a new Swarm for development
docker swarm init
# Build above image
docker build -t my-dev-image -f Dockerfile .
# Deploy the above stack up and running
docker stack deploy -c docker-compose.yaml mystack
```

And there should be `phpinfo()` output visible on `http://localhost`. Make sure there isn't any other service listening on port 80 before running above command.

### PHP 7.0, 7.1, PHP 7.2

To use older versions PHP 7.0, 7.1, or 7.2 use Docker images with `7.0`, `7.1`, or `7.2`:

```Dockerfile
FROM phpearth/php:7.2-nginx

RUN apk add --no-cache composer
```

## PHP.earth Alpine repository

These Docker images include the latest PHP versions and packages for Alpine Linux via the 3rd party [PHP.earth Alpine repository](https://docs.php.earth/linux/alpine).

```Dockerfile
FROM alpine:3.8

ADD https://repos.php.earth/alpine/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub
RUN echo "https://repos.php.earth/alpine" >> /etc/apk/repositories \
    && apk add --no-cache php7.3
```

PHP.earth Alpine packages are prefixed with `php7.3`, `php7.2`, `php7.1`, and `php7.0`.

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
  `org.label-schema.vcs-url="https://github.com/phpearth/docker-php.git"`
* `vcs-ref` - Reference to commit in Git repository
* `schema-version` - Version of the Label Schema in use.
* `vendor` - Vendor name of the image creators.
* `name`
* `description`
* `url`

## License and contributing

[Contributions](https://github.com/phpearth/docker-php/blob/master/.github/CONTRIBUTING.md) are most welcome. This repository is released under the [MIT license](https://github.com/phpearth/docker-php/blob/master/LICENSE).
