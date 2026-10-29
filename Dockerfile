# WebGoat container perf test image
FROM alpine:3.18 AS stage0
LABEL variant="252374"
FROM debian:12-slim AS stage1
ENV APP_ID=33793
LABEL variant="842408"
FROM memcached:1.5
ENV APP_ID=93033
LABEL variant="184308"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
