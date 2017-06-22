# PHP.earth Alpine repository usage

This example will show, how to use PHP.earth Alpine alpine repository.

PHP.earth Alpine repository can be added to a Dockerfile:

```Dockerfile
FROM alpine:3.6

# Make repository trusted using public RSA key
ADD https://alpine.php.earth/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub

# Add repository
RUN echo "https://alpine.php.earth" >> /etc/apk/repositories
```

Let's put above together and install Nginx with PHP:

```Dockerfile
FROM alpine:3.6

ADD https://alpine.php.earth/phpearth.rsa.pub /etc/apk/keys/phpearth.rsa.pub
RUN echo "https://alpine.php.earth" >> /etc/apk/repositories \
    && apk add --no-cache php7.1-fpm nginx \
    && mkdir -p /run/nginx \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
```

```bash
docker build --no-cache -t vendor/php -f Dockerfile .
```

and run the container:

```bash
docker build --no-cache -t vendor/php -f Dockerfile .
```
