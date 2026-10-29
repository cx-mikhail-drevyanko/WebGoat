# WebGoat container perf test image
FROM golang:1.18
RUN apt-get update && apt-get install -y --no-install-recommends gnupg curl openssh-client dnsutils libcurl4 openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=4281
LABEL variant="332394"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
