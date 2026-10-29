# WebGoat container perf test image
FROM busybox:1.31 AS stage0
RUN apk add --no-cache busybox-extras
LABEL variant="350927"
FROM nginx:1.24-alpine AS stage1
RUN apk add --no-cache gzip
ENV APP_ID=2351
LABEL variant="984446"
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends nano net-tools openssh-client libssl-dev procps zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=84187
LABEL variant="766768"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
