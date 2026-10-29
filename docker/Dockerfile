# WebGoat container perf test image
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y --no-install-recommends perl nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=20280
LABEL variant="167307"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
