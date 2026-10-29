# WebGoat container perf test image
FROM golang:1.20-alpine AS stage0
RUN apk add --no-cache nano sqlite bash zlib vim
ENV APP_ID=50224
LABEL variant="972740"
FROM redis:7.0-alpine AS stage1
LABEL variant="326117"
FROM nginx:1.20-alpine
LABEL variant="839809"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
