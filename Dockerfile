# WebGoat container perf test image
FROM mariadb:10.3 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip procps net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=57791
LABEL variant="533684"
FROM node:16-alpine
RUN apk add --no-cache tar zlib libcurl nano git sqlite bind-tools
RUN npm install lodash@4.17.4 handlebars@4.0.5 jquery@2.2.4 express@4.16.0
LABEL variant="771170"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
