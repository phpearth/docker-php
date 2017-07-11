# PHP.earth Alpine repository

Visit [alpine.php.earth](https://alpine.php.earth/) for usage information.

## Building packages

```bash
make build-package r=main p=php7.1
```

This is a custom Alpine repository with the latest PHP versions for the elegant PHP development on Alpine Linux.

## Instructions

In case you don't have wget and common CA certificates PEM files installed:

```bash
apk add --no-cache wget ca-certificates
```

Make the repository trusted:

```bash
wget -O /etc/apk/keys/phpearth.rsa.pub https://alpine.php.earth/phpearth.rsa.pub
```

Register the repository on APK, by appending a new line in `/etc/apk/repositories`:

```bash
echo "https://alpine.php.earth" >> /etc/apk/repositories
```

## Usage

PHP packages of this repository are prefixed with `php7.1` and `php7.2`.

```bash
apk search --no-cache php7.1*
```

## Docker

Most common use case of Alpine Linux is undoubtedly the Docker. Add the PHP.earth Alpine repository to your Dockerfile:

```Dockerfile
FROM alpine:3.6

ADD https://alpine.php.earth/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub
RUN echo "https://alpine.php.earth" >> /etc/apk/repositories \
    && apk add --no-cache php7.1
```

## Packages
