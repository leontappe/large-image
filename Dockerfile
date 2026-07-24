FROM ubuntu:24.04

RUN set -eux; \
    mkdir -p /data; \
    dd if=/dev/urandom of=/data/random-5gib.bin bs=1G count=5 status=progress
