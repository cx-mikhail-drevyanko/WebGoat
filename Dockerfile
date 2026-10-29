# WebGoat container perf test image
FROM haproxy:2.0
RUN apt-get update && apt-get install -y --no-install-recommends unzip libxml2 libssl-dev dnsutils git net-tools openssl ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=76974
LABEL variant="405485"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
