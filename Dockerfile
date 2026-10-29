# WebGoat container perf test image
FROM alpine:3.12 AS stage0
RUN apk add --no-cache git bind-tools vim busybox-extras
LABEL variant="116870"
FROM mariadb:10.3
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=37462
LABEL variant="317799"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
