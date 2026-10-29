# WebGoat container perf test image
FROM node:20-alpine
RUN apk add --no-cache tzdata
RUN npm install moment@2.19.0
ENV APP_ID=89392
LABEL variant="958259"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
