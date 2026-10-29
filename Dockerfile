# WebGoat container perf test image
FROM alpine:3.16
RUN apk add --no-cache openssh-client sqlite wget zlib nano
LABEL variant="267453"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
