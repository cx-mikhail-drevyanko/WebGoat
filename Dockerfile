# WebGoat container perf test image
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=5755
LABEL variant="786610"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
