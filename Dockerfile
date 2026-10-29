# WebGoat container perf test image
FROM nginx:1.26 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends curl wget jq dnsutils procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=19839
LABEL variant="460225"
FROM node:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends nano net-tools wget && rm -rf /var/lib/apt/lists/*
RUN npm install moment@2.19.0 handlebars@4.0.5 request@2.88.0 lodash@4.17.4
LABEL variant="910697"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
