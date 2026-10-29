# WebGoat container perf test image
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache sqlite gzip ca-certificates openssl zlib tzdata nano
LABEL variant="496043"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
