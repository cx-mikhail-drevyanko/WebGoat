# WebGoat container perf test image
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends perl vim procps && rm -rf /var/lib/apt/lists/*
RUN npm install handlebars@4.0.5
ENV APP_ID=72097
LABEL variant="239723"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
