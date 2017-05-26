# Docker PHP Images

[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/petk/php/)

These are customized Docker images crafted with care for various tasks. Containing
PHP, Nginx and OpenLiteSpeed.

For official Docker PHP images visit [Docker Hub](https://hub.docker.com/_/php/).

## Features

* Debian Jessie slim or Alpine base image
* [Latest PHP 7.1](https://php.net)
* [Nginx](https://nginx.org/)
* [OpenLiteSpeed](http://open.litespeedtech.com/)
* PHP Extensions installation script
* [runit](http://smarden.org/runit/) for running multiple services without overhead.
* Optimized Docker image sizes

## Tags

* [`latest` (*Dockerfile*)](https://github.com/petk/docker-php/tree/master/Dockerfile-nginx) - Debian Jessie Slim, Nginx, PHP FPM
* [`alpine` (*Dockerfile*)](https://github.com/petk/docker-php/tree/master/Dockerfile-alpine-nginx) - Alpine, Nginx, PHP FPM
* [`litespeed` (*Dockerfile*)](https://github.com/petk/docker-php/tree/master/Dockerfile-litespeed) - Debian Jessie Slim, OpenLiteSpeed, PHP LiteSpeed SAPI
* [`cli` (*Dockerfile*)](https://github.com/petk/docker-php/tree/master/Dockerfile-cli) - Alpine, PHP CLI

## Quick Usage

Create a `Dockerfile` for your setup:

```bash
FROM petk/php
```

To run a CLI PHP script:

```bash
docker run -it --rm --name my-cli-script -v `pwd`:/usr/src/myapp -w /usr/src/myapp petk/php:cli php script.php
```

## Documentation

Check a more [extended documentation](https://github.com/petk/docker-php/tree/master/docs)
for additional information how to use these images and what's included.

## License and Contributing

[Contributions](https://github.com/petk/docker-php/blob/master/CONTRIBUTING.md)
are most welcome. This repository is released under the
[MIT license](https://github.com/petk/docker-php/blob/master/LICENSE).
