# WebGoat container perf test image
FROM postgres:11-alpine
RUN apk add --no-cache bash zlib
LABEL variant="6882"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
