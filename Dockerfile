# WebGoat container perf test image
FROM mariadb:10.3 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=13676
LABEL variant="436190"
FROM golang:1.16-alpine
RUN apk add --no-cache expat wget vim bind-tools
ENV APP_ID=10754
LABEL variant="430699"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
