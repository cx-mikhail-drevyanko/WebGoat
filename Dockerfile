# WebGoat container perf test image
FROM nginx:1.22 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils libxml2 sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="975291"
FROM node:16-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 openssh-client dnsutils perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=9913
LABEL variant="922310"
FROM mysql:5.7
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 git openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=17089
LABEL variant="414218"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
