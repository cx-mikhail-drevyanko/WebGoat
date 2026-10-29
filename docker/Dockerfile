# WebGoat container perf test image
FROM debian:buster
RUN apt-get update && apt-get install -y --no-install-recommends procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=62700
LABEL variant="626723"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
