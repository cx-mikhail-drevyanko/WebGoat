# WebGoat container perf test image
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g wget vim nano curl git dnsutils openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=10675
LABEL variant="259971"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
