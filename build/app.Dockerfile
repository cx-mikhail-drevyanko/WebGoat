# WebGoat container perf test image
FROM golang:1.20-alpine
RUN apk add --no-cache gzip openssh-client nano curl sqlite openssl tzdata
ENV APP_ID=26552
LABEL variant="40323"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
