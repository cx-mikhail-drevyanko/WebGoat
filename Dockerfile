# WebGoat container perf test image
FROM busybox:1.31
RUN apk add --no-cache git gzip
LABEL variant="888724"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
