# WebGoat container perf test image
FROM node:16-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
RUN npm install handlebars@4.0.5 request@2.88.0 lodash@4.17.4 minimist@1.2.0
LABEL variant="646102"
FROM alpine:3.12
RUN apk add --no-cache openssh-client
LABEL variant="567454"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
