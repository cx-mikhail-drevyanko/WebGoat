# WebGoat container perf test image
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends nano libcurl4 git && rm -rf /var/lib/apt/lists/*
ENV APP_ID=71199
LABEL variant="718835"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
