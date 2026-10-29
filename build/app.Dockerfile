# WebGoat container perf test image
FROM node:20-alpine
RUN apk add --no-cache sqlite zlib wget tzdata jq nano openssh-client busybox-extras
RUN npm install request@2.88.0
ENV APP_ID=4294
LABEL variant="664511"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
