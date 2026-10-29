# WebGoat container perf test image
FROM haproxy:2.0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils zlib1g libcurl4 libssl-dev wget nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=79959
LABEL variant="787754"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
