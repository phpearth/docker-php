# Apache and PHP

Let's create a Dockerfile:

```Dockerfile
FROM phpearth/php:7.1-apache
```

Docker Compose file:

```yaml
version: '3.3'

services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - 80:80
    volumes:
      - app:/var/www/localhost/htdocs
```

And run:

```bash
docker-compose -f .docker/docker-compose.yml up --force-recreate --build
```
