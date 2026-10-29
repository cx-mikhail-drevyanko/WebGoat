# WebGoat container perf test image
FROM python:3.10-slim
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev procps dnsutils openssh-client perl net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=96040
LABEL variant="523561"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
