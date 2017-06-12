&larr; [Usage](02-usage.md) | [Building PHP From Source](04-php.md) &rarr;

---

# Composer

Composer is a de-facto standard for managing PHP packages. Good practice however
is to not include it in the production Docker images. By default these images
include a helper installation script `install-composer` so you can easily install
Composer.

Let's first take a look at how to use Composer with Docker in general. There are
some established best practices:

## 1. Official Docker Composer Image

* [Docker Composer](https://hub.docker.com/_/composer/) - Official Docker image
  with Composer.

Pros:

* Official Composer image
* Simple to use
* Easy separation of development and production

Cons:

* It is a separate Docker image so if your application requires additional PHP
  extensions, or use the scripts defined in the `composer.json` file, you'll either
  need to install those also for this additional Composer image or pass the
  `--ignore-platform-reqs` and `--no-scripts` and manage scripts separately.

## 2. Custom Installation

You can also simply install Composer per project basis on your own in your Dockerfile:

```Dockerfile
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer
```

If you'll need to install PHP packages from sources instead of zip archives you
will also need to install
[version control system](https://getcomposer.org/doc/00-intro.md#system-requirements)
such as Git.

```Dockerfile
RUN apt-get update && apt-get -y --no-install-recommends install git \
    && php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer \
    && rm -rf /var/lib/apt/lists/*
```

Composer can be then used in the following ways:

```bash
docker run -it --rm --name composer -v "$PWD":/usr/src/myapp -w /usr/src/myapp php-app composer
```

With Docker Compose

```bash
docker-compose run --rm -w /var/www/app app composer
```

Pros:

Advantage of custom installation per project is that Composer is running with the
same PHP installation as your application and can pass the PHP extensions checkings.

Cons:

* Composer is present also in production and to have separate production image
  you'll need to create more than one Dockerfile for application. Follow chapter
  3 how to solve this case.

## 3. Docker Build Arguments

When building production images, you can avoid adding Composer in your image with
build arguments. The following example uses Docker build arguments and the provided
`install-composer` script:

```Dockerfile
FROM phpearth/php:nginx

ARG APP_ENV=prod

RUN if [ ${APP_ENV} = "dev" ]; then \
        apk add --no-cache git openssh && install-composer; \
    fi
```

You can set the build arguments in the Docker Compose files. For example:

```yaml
version: '3.2'

services:
  app:
    volumes:
      - ../:/var/www/app
    build:
      args:
        - APP_ENV=dev
    ports:
      - 80:80
```

### Prestissimo Composer Plugin

[Prestissimo](https://github.com/hirak/prestissimo) is a Composer plugin for faster
parallel downloading of PHP packages.

You can install prestissimo by providing `-p` option to `install-composer` script.

```Dockerfile
FROM phpearth/php:nginx

ARG APP_ENV=prod

RUN if [ ${APP_ENV} = "dev" ]; then \
        apk add --no-cache git openssh && install-composer -p; \
    fi
```

---
&larr; [Usage](02-usage.md) | [Building PHP From Source](04-php.md) &rarr;
