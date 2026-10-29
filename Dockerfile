# WebGoat container perf test image
FROM busybox:1.31
RUN apk add --no-cache gzip libxml2 tar tzdata openssl zlib sqlite git
ENV APP_ID=80812
LABEL variant="797867"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
