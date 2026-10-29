# WebGoat container perf test image
FROM httpd:2.4.46 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils nano zlib1g libssl-dev gnupg sqlite3 openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="394350"
FROM nginx:1.22 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev nano net-tools procps ca-certificates wget unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=65099
LABEL variant="265158"
FROM postgres:11-alpine
RUN apk add --no-cache tar ca-certificates libcurl vim openssh-client zlib
ENV APP_ID=41221
LABEL variant="352926"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
