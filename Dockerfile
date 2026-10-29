# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*
ENV APP_ID=58596
LABEL variant="839988"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
