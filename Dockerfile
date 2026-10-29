# WebGoat container perf test image
FROM haproxy:2.0
RUN apt-get update && apt-get install -y --no-install-recommends wget openssh-client perl libxml2 vim jq git curl && rm -rf /var/lib/apt/lists/*
LABEL variant="313646"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
