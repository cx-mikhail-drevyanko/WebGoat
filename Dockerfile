# WebGoat container perf test image
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=49039
LABEL variant="159081"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
