# WebGoat container perf test image
FROM tomcat:10.1-jre17 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=10139
LABEL variant="277862"
FROM golang:1.18
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 jq libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=48044
LABEL variant="132965"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
