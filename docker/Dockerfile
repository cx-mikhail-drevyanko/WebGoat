# WebGoat container perf test image
FROM debian:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=85739
LABEL variant="251239"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
