# Usage

Create a `Dockerfile` for your setup:

```bash
FROM petk/php
```

## Alpine

Alpine Nginx image:

```bash
FROM petk/php:alpine
```

## OpenLiteSpeed

For OpenLiteSpeed, create a Dockerfile:

```bash
FROM petk/php:litespeed
```

## PHP CLI Script

To run a CLI PHP script:

```bash
docker run -it --rm --name my-cli-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp petk/php php script.php
```

Instead of `petk/php` you can also use `petk/php:litespeed` or
`petk/php:alpine`.

## Install PHP Extensions

To install additional PHP extensions, use `install-php-ext` script:

```bash
FROM petk/php

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
