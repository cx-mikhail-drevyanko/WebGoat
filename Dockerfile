# WebGoat container perf test image
FROM node:20-alpine AS stage0
RUN apk add --no-cache jq
RUN npm install handlebars@4.0.5 request@2.88.0
LABEL variant="330838"
FROM mysql:8.0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 vim unzip ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="346361"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
