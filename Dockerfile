# WebGoat container perf test image
FROM node:18-alpine
RUN apk add --no-cache expat jq nano libxml2 bind-tools git
RUN npm install moment@2.19.0
LABEL variant="505425"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
