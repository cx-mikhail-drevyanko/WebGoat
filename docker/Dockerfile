# WebGoat container perf test image
FROM elasticsearch:7.17.9 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev ca-certificates procps net-tools git && rm -rf /var/lib/apt/lists/*
LABEL variant="696818"
FROM nginx:1.14
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=82315
LABEL variant="338757"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
