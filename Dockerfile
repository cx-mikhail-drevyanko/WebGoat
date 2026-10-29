# WebGoat container perf test image
FROM alpine:3.22
LABEL variant="394528"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
