# WebGoat container perf test image
FROM debian:11-slim
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client gnupg libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=73604
LABEL variant="256264"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
