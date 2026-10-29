# WebGoat container perf test image
FROM nginx:1.18 AS stage0
ENV APP_ID=18483
LABEL variant="670713"
FROM postgres:14
RUN apt-get update && apt-get install -y --no-install-recommends procps vim openssl wget nano gnupg curl libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="797470"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
