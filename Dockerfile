# WebGoat container perf test image
FROM alpine:3.12
RUN apk add --no-cache openssh-client
LABEL variant="778951"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
