# WebGoat container perf test image
FROM ruby:3.0-alpine AS stage0
LABEL variant="679785"
FROM alpine:3.12
RUN apk add --no-cache gzip openssl
ENV APP_ID=5183
LABEL variant="719382"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
