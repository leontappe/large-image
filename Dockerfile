FROM ubuntu:24.04

ARG RANDOM_DATA_SIZE_MIB=5120

RUN set -eux; \
    mkdir -p /data; \
    dd if=/dev/urandom of=/data/random-5GiB.bin bs=1M count="${RANDOM_DATA_SIZE_MIB}" status=progress
