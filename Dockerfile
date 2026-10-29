# WebGoat container perf test image
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends vim net-tools libcurl4 zlib1g procps gnupg ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=10158
LABEL variant="297606"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
