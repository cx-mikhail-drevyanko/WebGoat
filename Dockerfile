# WebGoat container perf test image
FROM alpine:3.16 AS stage0
RUN apk add --no-cache sqlite
LABEL variant="665109"
FROM alpine:3.20
LABEL variant="696526"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
