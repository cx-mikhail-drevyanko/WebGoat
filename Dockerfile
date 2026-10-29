# WebGoat container perf test image
FROM nginx:1.14 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends nano wget && rm -rf /var/lib/apt/lists/*
LABEL variant="836802"
FROM mariadb:10.6 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends git gnupg vim curl ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=39698
LABEL variant="150850"
FROM eclipse-temurin:17-jre-alpine
RUN apk add --no-cache libxml2 libcurl gzip tar busybox-extras
ENV APP_ID=83378
LABEL variant="95511"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
