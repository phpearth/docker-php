# Usage

Create a `Dockerfile` for your setup:

```bash
FROM petk/php
```

## Alpine

Alpine Nginx image:

```Dockerfile
FROM petk/php:nginx
```

## OpenLiteSpeed

For OpenLiteSpeed, create a Dockerfile:

```Dockerfile
FROM petk/php:litespeed
```

## PHP CLI Script

To run a CLI PHP script:

```bash
docker run -it --rm --name my-cli-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp petk/php php script.php
```

Instead of `petk/php` you can also use `petk/php:litespeed`, `petk/php:nginx` or
`petk/php:nginx-slim`.

## Install PHP Extensions

To install additional PHP extensions, use `install-php-ext` script:

```Dockerfile
FROM petk/php:nginx

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
