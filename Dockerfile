# WebGoat container perf test image
FROM redis:5.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client net-tools sqlite3 dnsutils nano procps && rm -rf /var/lib/apt/lists/*
LABEL variant="618177"
FROM ruby:3.1-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=92271
LABEL variant="551600"
FROM ruby:2.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends curl libxml2 perl zlib1g dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=81046
LABEL variant="278853"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
