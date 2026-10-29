# WebGoat container perf test image
FROM haproxy:2.0
RUN apt-get update && apt-get install -y --no-install-recommends jq gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=49378
LABEL variant="778395"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
