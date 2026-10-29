# WebGoat container perf test image
FROM httpd:2.4.54
RUN apt-get update && apt-get install -y --no-install-recommends net-tools jq openssh-client sqlite3 openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="115908"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
