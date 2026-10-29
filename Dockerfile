# WebGoat container perf test image
FROM golang:1.16-alpine
RUN apk add --no-cache gzip openssh-client bind-tools wget bash zlib nano
LABEL variant="672304"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
