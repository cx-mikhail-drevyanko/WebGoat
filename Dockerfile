# WebGoat container perf test image
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client wget sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="497125"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
