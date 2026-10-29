# WebGoat container perf test image
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils libcurl4 unzip libxml2 zlib1g sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="787432"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
