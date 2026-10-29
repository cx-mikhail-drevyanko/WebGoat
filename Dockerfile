# WebGoat container perf test image
FROM node:18-alpine
RUN apk add --no-cache git jq openssl tzdata openssh-client bind-tools nano
RUN npm install lodash@4.17.4
LABEL variant="97017"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
