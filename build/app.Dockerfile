# WebGoat container perf test image
FROM mysql:8.0
RUN apt-get update && apt-get install -y --no-install-recommends jq wget net-tools gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=45980
LABEL variant="615028"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
