# WebGoat container perf test image
FROM redis:6.0-alpine AS stage0
ENV APP_ID=75612
LABEL variant="201129"
FROM ubuntu:24.04 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="862503"
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates libxml2 procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=67033
LABEL variant="994759"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
