# WebGoat container perf test image
FROM elasticsearch:7.17.9
RUN apt-get update && apt-get install -y --no-install-recommends wget libxml2 nano gnupg ca-certificates curl net-tools dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="791363"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
