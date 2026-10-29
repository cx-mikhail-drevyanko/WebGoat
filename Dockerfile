# WebGoat container perf test image
FROM tomcat:10.1-jre17 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils procps gnupg libcurl4 vim wget curl && rm -rf /var/lib/apt/lists/*
LABEL variant="92431"
FROM alpine:3.14 AS stage1
RUN apk add --no-cache openssh-client tar expat tzdata sqlite vim libxml2 git
ENV APP_ID=53227
LABEL variant="483323"
FROM mariadb:10.3
RUN apt-get update && apt-get install -y --no-install-recommends gnupg ca-certificates procps perl jq unzip && rm -rf /var/lib/apt/lists/*
LABEL variant="995728"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
