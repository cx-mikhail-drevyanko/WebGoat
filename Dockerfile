# WebGoat container perf test image
FROM alpine:3.20 AS stage0
RUN apk add --no-cache jq zlib
ENV APP_ID=31986
LABEL variant="890374"
FROM node:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends nano libcurl4 libssl-dev ca-certificates perl gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="182367"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
