# WebGoat container perf test image
FROM ubuntu:24.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps unzip vim libxml2 gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="781431"
FROM redis:6.2 AS stage1
LABEL variant="599458"
FROM nginx:1.18
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils libcurl4 procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=50589
LABEL variant="255926"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
