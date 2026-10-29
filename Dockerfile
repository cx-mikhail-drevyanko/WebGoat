# WebGoat container perf test image
FROM mongo:4.4 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl git libxml2 unzip nano openssh-client curl && rm -rf /var/lib/apt/lists/*
LABEL variant="798358"
FROM node:16-slim
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils wget net-tools zlib1g ca-certificates procps && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0 request@2.88.0 jquery@2.2.4 lodash@4.17.4
LABEL variant="949438"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
