# WebGoat container perf test image
FROM tomcat:10.1-jre17 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends gnupg net-tools zlib1g git openssh-client dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="528596"
FROM haproxy:2.6-alpine
RUN apk add --no-cache libxml2 expat zlib tzdata nano curl libcurl
LABEL variant="396794"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
