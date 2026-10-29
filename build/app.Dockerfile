# WebGoat container perf test image
FROM node:20-alpine AS stage0
RUN apk add --no-cache openssl bash gzip sqlite ca-certificates nano
ENV APP_ID=78852
LABEL variant="99595"
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev wget libxml2 zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="726871"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
