# WebGoat container perf test image
FROM mysql:8.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools vim perl nano libxml2 git libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=33989
LABEL variant="513558"
FROM influxdb:1.8 AS stage1
ENV APP_ID=52513
LABEL variant="295828"
FROM nginx:1.26
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=96436
LABEL variant="725698"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
