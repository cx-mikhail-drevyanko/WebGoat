# WebGoat container perf test image
FROM nginx:1.22
RUN apt-get update && apt-get install -y --no-install-recommends unzip libcurl4 zlib1g vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=17938
LABEL variant="672972"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
