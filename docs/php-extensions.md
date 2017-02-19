# PHP Extensions

## Core PHP Extensions

There are multiple types of PHP extensions. Core PHP extensions are the ones
located in the [php-src](https://github.com/php/php-src) repository directly and
have the following installation procedure:

```bash
# Let's say php source code is located in /usr/src/php
cd /usr/src/php/ext/extension-name
phpize
./configure
make -jN
make -jN install
```

## Pecl Extensions

Pecl extensions are either some of the PHP core extensions that got moved to pecl
or the community contributed ones. They are located on pecl.php.net. Installation
is done with the simple `pecl install` command:

```bash
pecl install {extension-name}
```

## Installing Extensions

By default these images come with some pre-installed PHP extensions that are
required to run some every day PHP applications. However many times you'll want
to install some other PHP extension as well.

Here's how to install them.

Images include a custom installation script for extensions `install-php-ext`
which does some magic and installs any of the above explained extensions.

```bash
install-php-ext {extension-name}
```

To install create a Dockerfile for your application and use the script in the following way:

```bash
FROM phpearth/php

RUN install-php-ext libsodium
```

## Supported Extensions

Core PHP extensions:

* [mcrypt](http://php.net/manual/en/book.mcrypt.php)

PECL extensions:

* [Libsodium](https://github.com/jedisct1/libsodium-php)
* [Swoole](https://github.com/swoole/swoole-src)
