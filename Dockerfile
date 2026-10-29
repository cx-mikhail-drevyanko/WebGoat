# WebGoat container perf test image
FROM httpd:2.4.46 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends curl git gnupg libssl-dev libcurl4 vim jq perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=33372
LABEL variant="153092"
FROM node:16-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends vim openssh-client libcurl4 ca-certificates net-tools jq sqlite3 && rm -rf /var/lib/apt/lists/*
RUN npm install minimist@1.2.0
LABEL variant="489403"
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 libcurl4 vim libssl-dev perl openssh-client gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="365723"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
