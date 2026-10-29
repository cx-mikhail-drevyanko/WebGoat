# WebGoat container perf test image
FROM ruby:2.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 procps jq curl net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="41225"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
