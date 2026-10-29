# WebGoat container perf test image
FROM httpd:2.4.58-alpine AS stage0
RUN apk add --no-cache nano ca-certificates openssh-client tzdata vim busybox-extras
ENV APP_ID=96003
LABEL variant="482136"
FROM memcached:1.5
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates openssl gnupg jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=65088
LABEL variant="298687"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
