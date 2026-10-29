# WebGoat container perf test image
FROM elasticsearch:7.17.9 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 wget ca-certificates vim zlib1g libssl-dev curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=14044
LABEL variant="153421"
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends procps libxml2 libcurl4 perl && rm -rf /var/lib/apt/lists/*
LABEL variant="68839"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
