FROM phpearth/php:litespeed

COPY . /

# Fix permissions for OpenLiteSpeed since we've copied config files from host
# system to Docker.
RUN sed -ri 's/^nobody:x:65534:65534:/nobody:x:1000:50:/' /etc/passwd \
    && chown -R lsadm:lsadm /usr/local/lsws/conf
