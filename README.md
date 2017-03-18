# Docker PHP Images

[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/phpearth/php/)

These are customized Docker images crafted with care for
various tasks we've met. with PHP, Nginx and OpenLiteSpeed.

For official Docker PHP images visit [Docker Hub](https://hub.docker.com/_/php/).

## Features

* Debian Jessie slim or Alpine base image
* [Latest PHP 7.1](https://php.net)
* [Nginx](https://nginx.org/)
* [OpenLiteSpeed](http://open.litespeedtech.com/)
* [Composer](https://getcomposer.org)
* PHP Extensions installation script
* [runit](http://smarden.org/runit/) for running multiple services without overhead.
* Optimized Docker image sizes

## Tags

* `phpearth/php:latest` - Debian Jessie Slim, Nginx, PHP FPM
* `phpearth/php:alpine` - Alpine, Nginx, PHP FPM
* `phpearth/php:litespeed` - Debian Jessie Slim, OpenLiteSpeed, PHP LiteSpeed SAPI

## Quick Usage

Create a `Dockerfile` for your setup:

```bash
FROM phpearth/php
```

To run a CLI PHP script:

```bash
docker run -it --rm --name my-cli-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp phpearth/php php script.php
```

To run Composer:

```bash
docker run -it --rm --name composer -v "$PWD":/usr/src/myapp -w /usr/src/myapp phpearth/php composer
```

## Documentation

Check a more [extended documentation](https://github.com/php-earth/docker-php/tree/master/docs)
for additional information how to use these images and what's included.

## License and Contributing

[Contributions](https://github.com/php-earth/docker-php/blob/master/CONTRIBUTING.md)
are most welcome. This repository is released under the
[MIT license](https://github.com/php-earth/docker-php/blob/master/LICENSE).
