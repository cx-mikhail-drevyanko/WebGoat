# WebGoat container perf test image
FROM busybox:1.31
RUN apk add --no-cache zlib
LABEL variant="641325"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
