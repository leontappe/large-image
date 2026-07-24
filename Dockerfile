FROM ubuntu:24.04

ARG RANDOM_DATA_SIZE_MIB=5120

# Intentionally generates a large random payload for long-pull testing.
RUN set -eux; \
    mkdir -p /data; \
    dd if=/dev/urandom of=/data/random-data.bin bs=1M count="${RANDOM_DATA_SIZE_MIB}" status=none
