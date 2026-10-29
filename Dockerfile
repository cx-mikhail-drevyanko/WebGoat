# WebGoat container perf test image
FROM traefik:v2.5
RUN apt-get update && apt-get install -y --no-install-recommends nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=18392
LABEL variant="749434"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
