# WebGoat container perf test image
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 libssl-dev openssh-client zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=72471
LABEL variant="740643"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
