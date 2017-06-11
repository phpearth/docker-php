# Docker For PHP Developers

[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/phpearth/php/)

Customized Docker images crafted with care for various PHP tasks. Containing
PHP, Nginx and OpenLiteSpeed.

## Features

* [Latest PHP 7.1](https://php.net) and upcoming PHP 7.2
* [Composer](https://getcomposer.org) installation script
* [Nginx](https://nginx.org/)
* [OpenLiteSpeed](http://open.litespeedtech.com/)
* PHP Extensions installation script
* [runit](http://smarden.org/runit/) for running multiple services without overhead.
* Debian Jessie slim or Alpine base image
* Optimized Docker image sizes

## Tags

### PHP 7.1

* [`latest` (*Dockerfile*)](https://github.com/php-earth/docker-php/tree/master/Dockerfile-7.1) - PHP CLI, Alpine
* [`litespeed` (*Dockerfile*)](https://github.com/php-earth/docker-php/tree/master/Dockerfile-7.1-litespeed) - OpenLiteSpeed, PHP LiteSpeed SAPI, Alpine
* [`litespeed-slim` (*Dockerfile*)](https://github.com/php-earth/docker-php/tree/master/Dockerfile-7.1-litespeed-slim) - OpenLiteSpeed, PHP LiteSpeed SAPI, Debian Jessie Slim
* [`nginx` (*Dockerfile*)](https://github.com/php-earth/docker-php/tree/master/Dockerfile-7.1-nginx) - Nginx, PHP FPM, Alpine
* [`nginx-slim` (*Dockerfile*)](https://github.com/php-earth/docker-php/tree/master/Dockerfile-7.1-nginx-slim) - PHP FPM, Nginx, Debian Jessie Slim

### PHP 7.2

* [`7.2` (*Dockerfile*)](https://github.com/php-earth/docker-php/tree/master/Dockerfile-7.2) - PHP CLI, Alpine
* [`7.2-litespeed` (*Dockerfile*)](https://github.com/php-earth/docker-php/tree/master/Dockerfile-7.2-litespeed) - OpenLiteSpeed, PHP LiteSpeed SAPI, Alpine
* [`7.2-litespeed-slim` (*Dockerfile*)](https://github.com/php-earth/docker-php/tree/master/Dockerfile-7.2-litespeed-slim) - OpenLiteSpeed, PHP LiteSpeed SAPI, Debian Jessie Slim
* [`7.2-nginx` (*Dockerfile*)](https://github.com/php-earth/docker-php/tree/master/Dockerfile-7.2-nginx) - Nginx, PHP FPM, Alpine
* [`7.2-nginx-slim` (*Dockerfile*)](https://github.com/php-earth/docker-php/tree/master/Dockerfile-7.2-nginx-slim) - PHP FPM, Nginx, Debian Jessie Slim

## Quick Usage

Create a `Dockerfile` for your setup:

```Dockerfile
FROM phpearth/php:nginx
```

To run a CLI PHP script:

```bash
docker run -it --rm -v `pwd`:/usr/src/myapp -w /usr/src/myapp phpearth/php php script.php
```

## Documentation

Check a more [extended documentation](https://github.com/php-earth/docker-php/tree/master/docs/README.md)
for additional information how to use these images and what's included.

## License and Contributing

[Contributions](https://github.com/php-earth/docker-php/blob/master/CONTRIBUTING.md)
are most welcome. This repository is released under the
[MIT license](https://github.com/php-earth/docker-php/blob/master/LICENSE).
