# WebGoat container perf test image
FROM debian:buster
RUN apt-get update && apt-get install -y --no-install-recommends nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=50163
LABEL variant="841774"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
