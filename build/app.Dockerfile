# WebGoat container perf test image
FROM nginx:1.26 AS stage0
ENV APP_ID=34864
LABEL variant="683454"
FROM tomcat:10.1-jre17 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends nano perl && rm -rf /var/lib/apt/lists/*
LABEL variant="203589"
FROM httpd:2.4.54
RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates git nano perl zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=17699
LABEL variant="620841"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
