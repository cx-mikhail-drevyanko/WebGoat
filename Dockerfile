# WebGoat container perf test image
FROM nginx:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 libxml2 procps net-tools ca-certificates nano openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=28540
LABEL variant="277747"
FROM alpine:3.12 AS stage1
ENV APP_ID=68727
LABEL variant="222294"
FROM alpine:3.18
LABEL variant="754088"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
