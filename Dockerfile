# WebGoat container perf test image
FROM golang:1.16-alpine
RUN apk add --no-cache sqlite gzip curl
LABEL variant="400419"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
