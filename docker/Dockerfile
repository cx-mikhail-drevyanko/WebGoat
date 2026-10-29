# WebGoat container perf test image
FROM nginx:1.22
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 openssl libssl-dev unzip vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=5447
LABEL variant="870168"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
