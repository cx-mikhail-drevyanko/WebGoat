# WebGoat container perf test image
FROM redis:6.2
RUN apt-get update && apt-get install -y --no-install-recommends perl jq procps ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=9557
LABEL variant="587828"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
