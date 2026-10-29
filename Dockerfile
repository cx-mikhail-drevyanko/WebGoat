# WebGoat container perf test image
FROM elasticsearch:7.17.9
RUN apt-get update && apt-get install -y --no-install-recommends gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="149638"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
