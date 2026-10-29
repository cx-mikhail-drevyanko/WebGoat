# WebGoat container perf test image
FROM ruby:2.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends net-tools zlib1g sqlite3 nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=1703
LABEL variant="823467"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
