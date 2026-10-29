# WebGoat container perf test image
FROM golang:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 vim libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=47471
LABEL variant="81435"
FROM golang:1.18
LABEL variant="986596"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
