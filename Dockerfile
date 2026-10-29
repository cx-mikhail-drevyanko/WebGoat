# WebGoat container perf test image
FROM golang:1.16-alpine
RUN apk add --no-cache openssl bash git tzdata tar nano
LABEL variant="400732"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
