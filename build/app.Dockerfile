# WebGoat container perf test image
FROM mongo:4.4 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates procps nano openssl perl && rm -rf /var/lib/apt/lists/*
LABEL variant="739454"
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends git ca-certificates libcurl4 wget curl libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=93453
LABEL variant="699876"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
