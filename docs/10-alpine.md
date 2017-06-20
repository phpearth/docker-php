&larr; [Recipes](09-recipes.md) | [Documentation Index](/README.md) &rarr;

---

# Alpine Linux

Alpine images are used because they provide a very small final Docker image size.
This has an advantage when pulling base images from Docker registry, and when
pushing them to the registry or production.

Alpine Linux provides `apk` tool for managing packages.

* [Alpine Linux package management](https://wiki.alpinelinux.org/wiki/Alpine_Linux_package_management)

## Alpine PHP packages

Alpine already offers a very good [PHP packages](https://pkgs.alpinelinux.org/packages?name=php7*)
in their official repository.

In Docker, you can install the PHP very easily with `apk`:

```Dockerfile
FROM alpine:3.6

RUN apk add --no-cache php7
```

Keep in mind that there is a separate repository for each PHP extension. For example,
if you'll need `session` extension, you'll need to add the `php7-session` package:

```Dockerfile
FROM alpine:3.6

RUN apk add --no-cache php7 php7-session
```

## PHP.earth Alpine repository

These images provide a custom Alpine repository located at
[https://alpine.php.earth](https://alpine.php.earth) to provide the latest PHP
versions and most customizations required for the elegant PHP development with
Docker.

The PHP.earth Alpine repository can be used in the following way:

1. First you need to make the PHP.earth 3rd party repository trusted:

  ```bash
  wget -O /etc/apk/keys/phpearth.rsa.pub https://alpine.php.earth/phpearth.rsa.pub
  ```

2. Then you can register the repository on APK, by adding a new line with
  repository link in `/etc/apk/repositories`:

  ```bash
  echo "https://alpine.php.earth" >> /etc/apk/repositories
  ```

### PHP.earth repository usage

To use this repository with Docker, you can create a `Dockerfile`:

```Dockerfile
FROM alpine:3.6

ADD https://alpine.php.earth/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub
RUN echo "https://alpine.php.earth" >> /etc/apk/repositories \
    && apk add --no-cache php7.1
```

PHP packages are prefixed with `php7.1-` and `php7.2-`

```bash
apk search php7.1*
```

For more information on what is included in the PHP.earth Alpine repository,
visit [alpine.php.earth](https://alpine.php.earth).

---
&larr; [Recipes](09-recipes.md) | [Documentation Index](/README.md) &rarr;
