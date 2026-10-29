# WebGoat container perf test image
FROM elasticsearch:7.17.9 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=72877
LABEL variant="763891"
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends curl wget dnsutils jq git libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=72163
LABEL variant="900863"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
