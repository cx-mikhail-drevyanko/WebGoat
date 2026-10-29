# WebGoat container perf test image
FROM node:20-alpine AS stage0
RUN apk add --no-cache openssh-client curl bind-tools ca-certificates vim openssl expat zlib
RUN npm install lodash@4.17.4 moment@2.19.0
LABEL variant="996756"
FROM ruby:2.7-slim
LABEL variant="635284"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
