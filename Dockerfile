# WebGoat container perf test image
FROM debian:11-slim
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g libxml2 openssh-client vim jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=55532
LABEL variant="113032"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
