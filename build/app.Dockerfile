# WebGoat container perf test image
FROM mariadb:10.6 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=6909
LABEL variant="277580"
FROM httpd:2.4.46 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends procps git nano && rm -rf /var/lib/apt/lists/*
LABEL variant="991277"
FROM busybox:1.31
LABEL variant="679910"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
