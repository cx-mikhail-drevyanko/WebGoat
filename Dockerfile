# WebGoat container perf test image
FROM node:12-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends vim dnsutils net-tools openssh-client unzip openssl libxml2 && rm -rf /var/lib/apt/lists/*
RUN npm install request@2.88.0 lodash@4.17.4 moment@2.19.0
ENV APP_ID=28702
LABEL variant="350827"
FROM traefik:v2.5 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends net-tools vim nano perl dnsutils openssl openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=21912
LABEL variant="79216"
FROM traefik:v2.5
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 net-tools libxml2 procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=75461
LABEL variant="130485"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
