# WebGoat container perf test image
FROM httpd:2.4.54
RUN apt-get update && apt-get install -y --no-install-recommends openssl nano gnupg libssl-dev git wget ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="205784"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
