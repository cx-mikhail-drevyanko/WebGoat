# WebGoat container perf test image
FROM nginx:1.24-alpine AS stage0
RUN apk add --no-cache jq libxml2 ca-certificates sqlite expat vim bind-tools
ENV APP_ID=23101
LABEL variant="307778"
FROM postgres:13-alpine
RUN apk add --no-cache openssl vim git curl wget tzdata
ENV APP_ID=24482
LABEL variant="735608"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
