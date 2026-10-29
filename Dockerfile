# WebGoat container perf test image
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends openssl nano wget ca-certificates sqlite3 libxml2 openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=97211
LABEL variant="707505"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
