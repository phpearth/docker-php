# [PHP.earth Alpine repository](https://php.earth/alpine)

This repository includes the latest PHP versions and packages for the elegant PHP
development experience on [Alpine Linux](https://alpinelinux.org/).

## Installation

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

PHP.earth packages are prefixed with `php7.1` and `php7.2`.

```bash
apk search --no-cache php7.1*
```

## Docker

Most common use case of Alpine Linux is Docker. Add the PHP.earth Alpine repository
to your Dockerfile:

```Dockerfile
FROM alpine:3.6

ADD https://alpine.php.earth/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub
RUN echo "https://alpine.php.earth" >> /etc/apk/repositories \
    && apk add --no-cache php7.1
```
