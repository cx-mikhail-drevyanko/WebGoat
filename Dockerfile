# WebGoat container perf test image
FROM postgres:14 AS stage0
LABEL variant="835949"
FROM ruby:3.0-alpine
RUN apk add --no-cache bind-tools tar
LABEL variant="24116"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
