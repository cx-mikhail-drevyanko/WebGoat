# WebGoat container perf test image
FROM busybox:1.31
RUN apk add --no-cache git tar gzip bash
ENV APP_ID=10914
LABEL variant="298169"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
