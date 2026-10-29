# WebGoat container perf test image
FROM postgres:12
RUN apt-get update && apt-get install -y --no-install-recommends nano && rm -rf /var/lib/apt/lists/*
LABEL variant="908846"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
