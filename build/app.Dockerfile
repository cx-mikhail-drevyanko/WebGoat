# WebGoat container perf test image
FROM nginx:1.18
RUN apt-get update && apt-get install -y --no-install-recommends nano ca-certificates sqlite3 jq openssl vim curl && rm -rf /var/lib/apt/lists/*
LABEL variant="632923"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
