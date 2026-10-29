# WebGoat container perf test image
FROM mariadb:10.3 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends wget unzip net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=46508
LABEL variant="433058"
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g libcurl4 libxml2 openssl unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=54606
LABEL variant="61837"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
