# WebGoat container perf test image
FROM traefik:v2.10
RUN apt-get update && apt-get install -y --no-install-recommends curl unzip libssl-dev libxml2 net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=56619
LABEL variant="798089"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
