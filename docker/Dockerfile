# WebGoat container perf test image
FROM mariadb:10.6
RUN apt-get update && apt-get install -y --no-install-recommends openssl curl git dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="42393"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
