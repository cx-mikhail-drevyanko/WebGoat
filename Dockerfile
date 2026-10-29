# WebGoat container perf test image
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends procps git net-tools curl zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="935574"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
