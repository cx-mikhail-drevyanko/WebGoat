# WebGoat container perf test image
FROM busybox:1.36
RUN apk add --no-cache curl busybox-extras tar gzip ca-certificates sqlite zlib
LABEL variant="254109"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
