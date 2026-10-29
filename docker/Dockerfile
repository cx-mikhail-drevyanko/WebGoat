# WebGoat container perf test image
FROM memcached:1.5
RUN apt-get update && apt-get install -y --no-install-recommends nano ca-certificates openssl sqlite3 curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=8700
LABEL variant="624543"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
