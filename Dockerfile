# WebGoat container perf test image
FROM mariadb:10.6 AS stage0
LABEL variant="514133"
FROM alpine:3.16
ENV APP_ID=12832
LABEL variant="678304"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
