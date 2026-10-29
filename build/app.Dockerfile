# WebGoat container perf test image
FROM alpine:3.12 AS stage0
RUN apk add --no-cache bind-tools zlib gzip
LABEL variant="724991"
FROM mongo:5.0
LABEL variant="888161"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
