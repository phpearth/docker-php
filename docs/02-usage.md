&larr; [Intro](01-intro.md) | [Composer](03-composer.md) &rarr;
---

# Usage

## Dockerfile

Create a `Dockerfile` for your setup:

### Alpine Nginx

```Dockerfile
FROM phpearth/php:nginx
```

### Alpine OpenLiteSpeed

```Dockerfile
FROM phpearth/php:litespeed
```

### PHP CLI Script

To run a CLI PHP script:

```bash
docker run -it --rm --name my-cli-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp phpearth/php php script.php
```

### Debian Slim Nginx

```Dockerfile
FROM phpearth/php:nginx-deb
```

### Debian Slim OpenLiteSpeed

```Dockerfile
FROM phpearth/php:litespeed-deb
```

### PHP 7.2

To use PHP 7.2 images just prepend the tag name with `7.2`:

* `phpearth/php:7.2`
* `phpearth/php:7.2-nginx`
* `phpearth/php:7.2-litespeed`
* `phpearth/php:7.2-nginx-deb`
* `phpearth/php:7.2-litespeed-deb`

## Install PHP Extensions

To install additional PHP extensions, you can use our `install-php-ext` script,
which automatically also installs all system dependencies required to use particular
PHP extension.

```Dockerfile
FROM phpearth/php:nginx

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

  These images use runit because for smaller usage resources and image sizes.

---
&larr; [Intro](01-intro.md) | [Composer](03-composer.md) &rarr;
