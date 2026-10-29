# WebGoat container perf test image
FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends perl procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=29570
LABEL variant="747400"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
