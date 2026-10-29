# WebGoat container perf test image
FROM busybox:1.36 AS stage0
RUN apk add --no-cache busybox-extras
LABEL variant="414663"
FROM caddy:2.7-alpine AS stage1
ENV APP_ID=98899
LABEL variant="630733"
FROM redis:6.0-alpine
RUN apk add --no-cache openssl ca-certificates git busybox-extras libcurl
LABEL variant="930643"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
