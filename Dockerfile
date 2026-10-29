# WebGoat container perf test image
FROM golang:1.18
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 libssl-dev unzip git jq dnsutils openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="845498"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
