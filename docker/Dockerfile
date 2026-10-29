# WebGoat container perf test image
FROM node:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev openssh-client wget vim curl dnsutils && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0
ENV APP_ID=24572
LABEL variant="498944"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
