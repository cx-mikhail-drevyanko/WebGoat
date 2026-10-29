# WebGoat container perf test image
FROM nginx:1.26
RUN apt-get update && apt-get install -y --no-install-recommends nano && rm -rf /var/lib/apt/lists/*
LABEL variant="723681"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
