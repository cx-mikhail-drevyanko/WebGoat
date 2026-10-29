# WebGoat container perf test image
FROM mysql:5.7 AS stage0
LABEL variant="231113"
FROM busybox:1.31
RUN apk add --no-cache openssl zlib ca-certificates tar curl tzdata gzip
ENV APP_ID=43899
LABEL variant="17231"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
