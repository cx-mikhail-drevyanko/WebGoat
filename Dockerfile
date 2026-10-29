# WebGoat container perf test image
FROM node:16-alpine
RUN apk add --no-cache tzdata vim curl tar jq libxml2
RUN npm install express@4.16.0 lodash@4.17.4
LABEL variant="896696"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
