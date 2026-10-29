# WebGoat container perf test image
FROM mariadb:10.3
RUN apt-get update && apt-get install -y --no-install-recommends openssl gnupg sqlite3 wget libcurl4 zlib1g git perl && rm -rf /var/lib/apt/lists/*
LABEL variant="429737"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
