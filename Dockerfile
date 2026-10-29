# WebGoat container perf test image
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends nano openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=6691
LABEL variant="809475"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
