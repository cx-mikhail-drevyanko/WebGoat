# WebGoat container perf test image
FROM haproxy:2.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends wget libxml2 dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="590510"
FROM rabbitmq:3.11
RUN apt-get update && apt-get install -y --no-install-recommends openssl net-tools zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=27426
LABEL variant="298276"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
