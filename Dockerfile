# WebGoat container perf test image
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends jq nano openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="624528"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
