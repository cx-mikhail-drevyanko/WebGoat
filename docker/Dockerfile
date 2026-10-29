# WebGoat container perf test image
FROM tomcat:10.1-jre17 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends vim git openssh-client ca-certificates openssl net-tools perl libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="347110"
FROM busybox:1.31 AS stage1
RUN apk add --no-cache openssh-client busybox-extras
ENV APP_ID=49400
LABEL variant="506988"
FROM haproxy:2.6-alpine
ENV APP_ID=15584
LABEL variant="185312"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
