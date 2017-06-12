# Docker For PHP Developers

[![Docker Automated build](https://img.shields.io/docker/automated/phpearth/php.svg?style=plastic)](https://hub.docker.com/r/phpearth/php/) [![MIT License](https://img.shields.io/github/license/php-earth/docker-php.svg?style=plastic "MIT License")](https://github.com/php-earth/docker-php/blob/master/LICENSE) [![Build Status](https://travis-ci.org/php-earth/docker-php.svg?branch=master)](https://travis-ci.org/php-earth/docker-php)

Carefully crafted Docker images for PHP developers with latest PHP versions, Nginx, OpenLiteSpeed and Apache.

## Features

* Latest PHP 7.1 and upcoming PHP 7.2
* [Nginx](https://nginx.org/)
* [OpenLiteSpeed](http://open.litespeedtech.com/)
* [Apache HTTP Server](https://httpd.apache.org/)
* PHP Extensions installation script
* [Composer](https://getcomposer.org) installation script
* [runit](http://smarden.org/runit/) for running multiple services without overhead.
* Debian Jessie slim or Alpine base image
* Optimized Docker image sizes

## Docker Tags

The following list contains all current Docker tags and what is included in each. They follow PHP release cycle and supported version.

| Docker Tag | Features | Support Until |
| ---------- | -------- | ------------- |
| [latest](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1) | PHP 7.1 CLI, Alpine | 1 December 2019 |
| [7.1-litespeed](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-litespeed) | OpenLiteSpeed, PHP LiteSpeed SAPI, Alpine |   1 December 2019 |
| [7.1-litespeed-deb](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-litespeed-deb) | OpenLiteSpeed, PHP LiteSpeed SAPI, Debian Jessie Slim | 1 December 2019 |
| [7.1-nginx](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-nginx) | Nginx, PHP FPM, Alpine | 1 December 2019 |
| [7.1-nginx-deb](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-nginx-deb) | PHP FPM, Nginx, Debian Jessie Slim | 1 December 2019 |
| [7.1-apache](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-apache) | Apache, PHP, Alpine | 1 December 2019 |
| [7.1-apache-deb](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.1-apache-deb) | Apache, PHP, Debian Jessie Slim | 1 December 2019 |
| [7.2](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2) | PHP CLI, Alpine | TBD |
| [7.2-litespeed](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-litespeed) | OpenLiteSpeed, PHP LiteSpeed SAPI, Alpine | TBD |
| [7.2-litespeed-deb](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-litespeed-deb) | OpenLiteSpeed, PHP LiteSpeed SAPI, Debian Jessie Slim | TBD |
| [7.2-nginx](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-nginx) | Nginx, PHP FPM, Alpine | TBD |
| [7.2-nginx-deb](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-nginx-deb) | PHP FPM, Nginx, Debian Jessie Slim | TBD |
| [7.2-apache](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-apache) | Apache, PHP, Alpine | TBD |
| [7.2-apache-deb](https://github.com/php-earth/docker-php/tree/master/docker/Dockerfile-7.2-apache-deb) | Apache, PHP, Debian Jessie Slim | TBD |

## Quick Usage

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

RUN install-composer
```

### PHP Extensions

PHP extensions installation:

```Dockerfile
FROM phpearth/php:7.1-litespeed

RUN install-php-ext libsodium intl pdo_mysql
```

## Documentation

A more detailed documentation and cookbook with Docker and PHP recipes:

* [Intro](https://github.com/php-earth/docker-php/blob/master/docs/01-intro.md)
* [Usage](https://github.com/php-earth/docker-php/blob/master/docs/02-usage.md)
* [Composer](https://github.com/php-earth/docker-php/blob/master/docs/03-composer.md)
* [Building PHP From Source](https://github.com/php-earth/docker-php/blob/master/docs/04-php.md)
* [PHP Extensions](https://github.com/php-earth/docker-php/blob/master/docs/05-php-extensions.md)
* [Permissions](https://github.com/php-earth/docker-php/blob/master/docs/06-permissions.md)
* [Certbot](https://github.com/php-earth/docker-php/blob/master/docs/07-certbot.md)
* [Recipes](https://github.com/php-earth/docker-php/blob/master/docs/08-recipes.md)

## License and Contributing

[Contributions](https://github.com/php-earth/docker-php/blob/master/CONTRIBUTING.md) are most welcome. This repository is released under the [MIT license](https://github.com/php-earth/docker-php/blob/master/LICENSE).
