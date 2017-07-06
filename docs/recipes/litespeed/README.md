# Alpine OpenLiteSpeed

In this example we'll run OpenLiteSpeed webserver with PHP 7.1.

Create a `Dockerfile`:

```Dockerfile
FROM phpearth/php:7.1-litespeed
```

The `docker-compose.yml` file:

```yml
version: '3.2'

services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - 80:8088
      - 7080:7080
    volumes:
      - ./var/lib/openlitespeed/app:/var/lib/openlitespeed/app
```

We've also created an example `index.php` file and mount the directory to `/var/lib/openlitespeed/app`
folder for webserver to read from it.

Finally we run:

```bash
docker-compose up
```

And there should be `phpinfo()` output visible on `http://localhost`. Make sure
there isn't any other service listening on port 80 before running above command.

The OpenLiteSpeed administration panel is accessible on `http://localhost:7080`.
