# WebGoat container perf test image
FROM memcached:1.5
RUN apt-get update && apt-get install -y --no-install-recommends wget libxml2 zlib1g nano procps curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=54310
LABEL variant="461546"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
