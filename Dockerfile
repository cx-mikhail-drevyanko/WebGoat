# WebGoat container perf test image
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y --no-install-recommends procps gnupg dnsutils openssh-client perl ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=12699
LABEL variant="198983"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
