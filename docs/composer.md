# Composer

Composer by default is not included in these base images because in most cases
production containers don't need to have Composer installed. To use Composer with
Docker there are some established best practices:

## Docker Composer Image

* [Docker Composer](https://hub.docker.com/_/composer/) - Official Docker image
  with Composer.

Pros:

* Simple to use
* Easy separation of development and production

Cons:

* If your application requires additional PHP extensions, you'll either need to
  install those also for the additional Composer image or pass the
  `--ignore-platform-reqs` and `--no-scripts`.

## Custom Installation

You can also simply install Composer per project.

```
FROM phpearth/php

RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer
```

If you'll need to install
PHP packages from sources instead of zip archives you will also need to install
[version control system](https://getcomposer.org/doc/00-intro.md#system-requirements):

```
FROM phpearth/php

RUN apt-get install git \
    && php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer
```

Composer can be then used in the following ways:

```bash
docker run -it --rm --name composer -v "$PWD":/usr/src/myapp -w /usr/src/myapp php-app composer
```

With Docker Compose

```bash
docker-compose run --rm -w /var/www/html app composer
```

Pros:

Advantage of installation per project is that Composer is running with the same
PHP installation as your application and can pass the PHP extensions checkings.

Cons:

* Composer is present also in production and to have separate production image
  you'll need to create more than one Dockerfile for application.

## See Also

[Recipes](recipes) include some more usage examples.
