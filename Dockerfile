# WebGoat container perf test image
FROM redis:7.0-alpine AS stage0
RUN apk add --no-cache bind-tools expat tzdata libxml2 ca-certificates zlib
ENV APP_ID=38110
LABEL variant="569947"
FROM redis:7.0-alpine AS stage1
RUN apk add --no-cache zlib expat tzdata nano
LABEL variant="800073"
FROM influxdb:1.8
LABEL variant="116378"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
