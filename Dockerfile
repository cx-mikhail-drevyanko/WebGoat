# WebGoat container perf test image
FROM traefik:v2.5
RUN apt-get update && apt-get install -y --no-install-recommends nano jq git && rm -rf /var/lib/apt/lists/*
LABEL variant="209089"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
