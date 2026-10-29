# WebGoat container perf test image
FROM debian:9-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev curl libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=92121
LABEL variant="651027"
FROM rabbitmq:3.11
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 zlib1g net-tools nano unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=89377
LABEL variant="773884"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
