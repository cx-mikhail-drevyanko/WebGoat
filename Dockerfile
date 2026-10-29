# WebGoat container perf test image
FROM golang:1.20-alpine
RUN apk add --no-cache expat tar sqlite bash curl openssh-client gzip openssl
ENV APP_ID=61280
LABEL variant="421338"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
