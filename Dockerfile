# WebGoat container perf test image
FROM golang:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=99993
LABEL variant="675049"
FROM redis:6.0-alpine AS stage1
RUN apk add --no-cache libcurl vim bind-tools tar sqlite gzip git
ENV APP_ID=62165
LABEL variant="950709"
FROM nginx:1.26
RUN apt-get update && apt-get install -y --no-install-recommends curl gnupg jq git libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=79390
LABEL variant="719792"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
