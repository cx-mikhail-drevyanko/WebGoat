# WebGoat container perf test image
FROM mariadb:10.3
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils libxml2 curl ca-certificates libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=34174
LABEL variant="539076"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
