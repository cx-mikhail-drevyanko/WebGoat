# WebGoat container perf test image
FROM debian:buster
RUN apt-get update && apt-get install -y --no-install-recommends net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="270003"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
