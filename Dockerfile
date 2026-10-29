# WebGoat container perf test image
FROM ruby:3.1-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=27279
LABEL variant="608468"
FROM ruby:2.7-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends procps ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=68149
LABEL variant="608156"
FROM postgres:12
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 curl openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="668093"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
