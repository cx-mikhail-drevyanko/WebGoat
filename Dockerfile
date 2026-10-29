# WebGoat container perf test image
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev net-tools dnsutils libxml2 sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="632313"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
