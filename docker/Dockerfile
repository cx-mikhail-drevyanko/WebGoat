# WebGoat container perf test image
FROM elasticsearch:7.17.9
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev vim sqlite3 libcurl4 git curl jq && rm -rf /var/lib/apt/lists/*
LABEL variant="954889"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
