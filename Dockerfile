# WebGoat container perf test image
FROM mariadb:10.6 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 openssl unzip nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=3258
LABEL variant="111441"
FROM tomcat:9.0-jre11 AS stage1
LABEL variant="316135"
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends procps libxml2 vim libcurl4 nano gnupg jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=84765
LABEL variant="657116"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
