# WebGoat container perf test image
FROM ruby:3.0-alpine AS stage0
RUN apk add --no-cache nano zlib openssl wget ca-certificates gzip
LABEL variant="939761"
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=73891
LABEL variant="991588"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
