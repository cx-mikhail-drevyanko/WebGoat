# WebGoat container perf test image
FROM postgres:14 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 dnsutils ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=70244
LABEL variant="745742"
FROM ubuntu:18.04 AS stage1
ENV APP_ID=81757
LABEL variant="489185"
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends curl openssh-client libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="784355"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
