# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends wget openssl sqlite3 openssh-client libssl-dev ca-certificates unzip && rm -rf /var/lib/apt/lists/*
LABEL variant="542214"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
