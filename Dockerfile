# WebGoat container perf test image
FROM debian:11-slim
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client git && rm -rf /var/lib/apt/lists/*
LABEL variant="265559"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
