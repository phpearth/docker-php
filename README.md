# Docker For PHP Developers

[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/petk/php/)

Customized Docker images crafted with care for various PHP tasks. Containing
PHP, Nginx and OpenLiteSpeed.

For official Docker PHP images visit [Docker Hub](https://hub.docker.com/_/php/).

## Features

* [Latest PHP 7.1](https://php.net)
* [Composer](https://getcomposer.org) installation script
* [Nginx](https://nginx.org/)
* [OpenLiteSpeed](http://open.litespeedtech.com/)
* PHP Extensions installation script
* [runit](http://smarden.org/runit/) for running multiple services without overhead.
* Debian Jessie slim or Alpine base image
* Optimized Docker image sizes

## Tags

* [`latest` (*Dockerfile*)](https://github.com/petk/docker-php/tree/master/Dockerfile) - PHP CLI, Alpine
* [`litespeed` (*Dockerfile*)](https://github.com/petk/docker-php/tree/master/Dockerfile-litespeed) - OpenLiteSpeed, PHP LiteSpeed SAPI, Debian Jessie Slim
* [`nginx` (*Dockerfile*)](https://github.com/petk/docker-php/tree/master/Dockerfile-fpm) - Nginx, PHP FPM, Alpine
* [`nginx-slim` (*Dockerfile*)](https://github.com/petk/docker-php/tree/master/Dockerfile-fpm-slim) - PHP FPM, Nginx, Debian Jessie Slim

## Quick Usage

Create a `Dockerfile` for your setup:

```Dockerfile
FROM petk/php:nginx
```

To run a CLI PHP script:

```bash
docker run -it --rm -v `pwd`:/usr/src/myapp -w /usr/src/myapp petk/php php script.php
```

## Documentation

Check a more [extended documentation](https://github.com/petk/docker-php/tree/master/docs)
for additional information how to use these images and what's included.

## License and Contributing

[Contributions](https://github.com/petk/docker-php/blob/master/CONTRIBUTING.md)
are most welcome. This repository is released under the
[MIT license](https://github.com/petk/docker-php/blob/master/LICENSE).
