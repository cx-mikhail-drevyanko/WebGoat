# WebGoat container perf test image
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends perl vim ca-certificates gnupg libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="865679"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
