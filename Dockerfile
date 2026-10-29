# WebGoat container perf test image
FROM eclipse-temurin:17-jre-alpine AS stage0
RUN apk add --no-cache ca-certificates
ENV APP_ID=83104
LABEL variant="610614"
FROM ruby:3.1-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 openssl libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=70343
LABEL variant="433385"
FROM golang:1.18
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates procps wget perl openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=9213
LABEL variant="816269"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
