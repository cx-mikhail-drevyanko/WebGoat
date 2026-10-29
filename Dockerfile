# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends openssl curl libcurl4 jq ca-certificates sqlite3 gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="817868"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
