# Docker PHP Image

This is an unofficial Docker image with PHP, Nginx and OpenLiteSpeed.

For official Docker PHP images visit [Docker Hub](https://hub.docker.com/_/php/).

## Features

* Debian Jessie slim or Alpine base image
* [Latest PHP 7.1](https://php.net)
* [Nginx](https://nginx.org/)
* [OpenLiteSpeed](http://open.litespeedtech.com/)
* [Composer](https://getcomposer.org)

## Usage

Create a `Dockerfile` for your setup:

```bash
FROM phpearth/php
```

For OpenLiteSpeed:

```bash
FROM phpearth/php:litespeed
```

To run a CLI PHP script:

```bash
docker run -it --rm --name my-cli-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp phpearth/php php script.php
```

To run Composer:

```bash
docker run -it --rm --name composer -v "$PWD":/usr/src/myapp -w /usr/src/myapp phpearth/php composer
```

Alpine Nginx image:

```bash
FROM phpearth/php:alpine
```

## License and Contributing

[Contributions](https://github.com/php-earth/docker-php/blob/master/CONTRIBUTING.md) are most welcome. This repository is released under the [MIT license](https://github.com/php-earth/docker-php/blob/master/LICENSE).
