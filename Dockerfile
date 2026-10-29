# WebGoat container perf test image
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*
ENV APP_ID=87249
LABEL variant="498329"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
