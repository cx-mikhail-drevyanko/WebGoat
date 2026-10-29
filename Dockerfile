# WebGoat container perf test image
FROM nginx:1.18
RUN apt-get update && apt-get install -y --no-install-recommends git wget unzip libxml2 openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="942314"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
