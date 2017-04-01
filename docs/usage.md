# Usage

Create a `Dockerfile` for your setup:

```bash
FROM phpearth/php
```

## Alpine

Alpine Nginx image:

```bash
FROM phpearth/php:alpine
```

## OpenLiteSpeed

For OpenLiteSpeed, create a Dockerfile:

```bash
FROM phpearth/php:litespeed
```

## PHP CLI Script

To run a CLI PHP script:

```bash
docker run -it --rm --name my-cli-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp phpearth/php php script.php
```

Instead of `phpearth/php` you can also use `phpearth/php:litespeed` or
`phpearth/php:alpine`.

## Install PHP Extensions

To install additional PHP extensions, use `install-php-ext` script:

```bash
FROM phpearth/php

RUN install-php-ext libsodium mcrypt soap
```

## Services

Best practice with Docker is to use one process per container. However sometimes
you want to package multiple services into a single container for various reasons:
simpler deployment, simpler usage, and similar cases.

To run multiple services in a single container there are multiple ways:

* Supervisord

  A solid solution to run and customize services. It requires Python.

* runit
