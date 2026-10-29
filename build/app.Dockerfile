# WebGoat container perf test image
FROM mongo:6.0
RUN apt-get update && apt-get install -y --no-install-recommends jq unzip vim perl openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=63633
LABEL variant="205352"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
