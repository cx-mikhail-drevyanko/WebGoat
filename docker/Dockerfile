# WebGoat container perf test image
FROM node:18-alpine
RUN apk add --no-cache openssl sqlite zlib openssh-client expat bind-tools
RUN npm install minimist@1.2.0 request@2.88.0
LABEL variant="767106"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
