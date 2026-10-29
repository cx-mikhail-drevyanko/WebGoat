# WebGoat container perf test image
FROM redis:5.0
RUN apt-get update && apt-get install -y --no-install-recommends wget gnupg ca-certificates openssl libcurl4 jq && rm -rf /var/lib/apt/lists/*
LABEL variant="220801"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
