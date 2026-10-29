# WebGoat container perf test image
FROM ruby:3.1-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 jq libssl-dev curl vim net-tools perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=8988
LABEL variant="486776"
FROM rabbitmq:3.11 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 net-tools unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=55968
LABEL variant="830875"
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends openssl curl zlib1g perl git && rm -rf /var/lib/apt/lists/*
ENV APP_ID=69299
LABEL variant="960666"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
