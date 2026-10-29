# WebGoat container perf test image
FROM ubuntu:22.04 AS stage0
ENV APP_ID=48156
LABEL variant="139354"
FROM nginx:1.14
RUN apt-get update && apt-get install -y --no-install-recommends net-tools libcurl4 git && rm -rf /var/lib/apt/lists/*
ENV APP_ID=56861
LABEL variant="343508"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
