# WebGoat container perf test image
FROM busybox:1.31
RUN apk add --no-cache gzip busybox-extras
LABEL variant="945528"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
