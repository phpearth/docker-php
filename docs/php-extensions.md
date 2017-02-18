# PHP Extensions

By default these images come with some preinstalled PHP extensions that are usually
required to run some every day PHP applications. However many times you'll want
to install some other PHP extention as well.

Here's how to install them.

Images include a custom installation script for extensions `install-php-ext`:

## Pecl Extensions

Create a Dockerfile for your application and use the script in the following way:

```bash
FROM phpearth/php

RUN install-php-ext libsodium
```

## Currently Supported Extensions

* [Libsodium](https://github.com/jedisct1/libsodium-php)
* [Swoole](https://github.com/swoole/swoole-src)
