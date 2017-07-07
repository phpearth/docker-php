# PHP 7.2

In this example we'll run an Nginx webserver with PHP 7.2 FPM.

Create a `Dockerfile`:

```Dockerfile
FROM phpearth/php:7.2-nginx
```

The `docker-compose.yml` file:

```yml
version: '3.3'

services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    volumes:
      - ./var/www:/var/www
    ports:
      - 80:80
```

We've also created an example `index.php` file and mount the directory to `/var/www`
folder for Nginx to read from it.

Finally we run:

```bash
docker-compose up
```

And there should be `phpinfo()` output visible on `http://localhost`. Make sure
there isn't any other service listening on port 80 before running above command.
