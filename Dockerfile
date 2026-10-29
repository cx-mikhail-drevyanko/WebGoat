# WebGoat container perf test image
FROM memcached:1.6-alpine AS stage0
RUN apk add --no-cache libxml2 tzdata bind-tools vim expat
ENV APP_ID=4762
LABEL variant="546566"
FROM postgres:12
RUN apt-get update && apt-get install -y --no-install-recommends procps vim gnupg wget && rm -rf /var/lib/apt/lists/*
LABEL variant="58473"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
