# WebGoat container perf test image
FROM httpd:2.4.54
RUN apt-get update && apt-get install -y --no-install-recommends procps && rm -rf /var/lib/apt/lists/*
LABEL variant="688769"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
