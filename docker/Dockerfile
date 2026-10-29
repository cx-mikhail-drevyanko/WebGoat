# WebGoat container perf test image
FROM alpine:3.16 AS stage0
RUN apk add --no-cache libcurl libxml2 tzdata wget tar
LABEL variant="608933"
FROM nginx:1.20-alpine AS stage1
RUN apk add --no-cache gzip ca-certificates tar zlib git libxml2 openssh-client
LABEL variant="446380"
FROM rabbitmq:3.11
ENV APP_ID=15045
LABEL variant="516881"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
