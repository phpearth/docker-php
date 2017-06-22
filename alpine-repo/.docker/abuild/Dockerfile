FROM alpine:3.6

RUN apk add --no-cache alpine-sdk

RUN adduser -D -g '' -u 1000 -G abuild packager \
    && echo "packager ALL=(ALL) ALL" >> /etc/sudoers \
    && echo "packager ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

COPY .docker/abuild /

USER packager
