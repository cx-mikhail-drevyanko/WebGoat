# WebGoat container perf test image
FROM alpine:3.12
RUN apk add --no-cache ca-certificates
LABEL variant="783783"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
