# WebGoat container perf test image
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends unzip nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=34710
LABEL variant="363893"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
