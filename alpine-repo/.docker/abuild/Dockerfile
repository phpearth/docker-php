FROM alpine:3.6

ENV GIT_DISCOVERY_ACROSS_FILESYSTEM=1

RUN apk add --no-cache alpine-sdk \
    && adduser -D -g '' -u 1000 -G abuild packager \
    && echo "packager ALL=(ALL) ALL" >> /etc/sudoers \
    && echo "packager ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

COPY .docker/abuild /

# To build PHP Pecl extensions and some packages, we'll need some deps from the
# local PHP.earth Alpine repository
COPY repo/main /alpine-repo
RUN echo "/alpine-repo" | tee -a /etc/apk/repositories \
    && abuild-sign -k /home/packager/.abuild/phpearth.rsa.priv /alpine-repo/x86_64/APKINDEX.tar.gz \
    && apk update

USER packager
