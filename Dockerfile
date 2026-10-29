# WebGoat container perf test image
FROM mariadb:10.6 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends gnupg zlib1g perl libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="896935"
FROM memcached:1.6-alpine
RUN apk add --no-cache libxml2 wget libcurl openssh-client busybox-extras
ENV APP_ID=63569
LABEL variant="56715"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
