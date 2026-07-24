FROM ubuntu:24.04

RUN set -eux; \
    mkdir -p /data; \
    dd if=/dev/urandom of=/data/random-5GiB.bin bs=1M count="$((5 * 1024))" status=progress
