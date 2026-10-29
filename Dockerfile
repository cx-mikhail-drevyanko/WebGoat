# WebGoat container perf test image
FROM traefik:v2.10
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*
ENV APP_ID=93068
LABEL variant="526302"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
