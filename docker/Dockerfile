# WebGoat container perf test image
FROM nginx:1.20-alpine
RUN apk add --no-cache ca-certificates expat gzip busybox-extras
LABEL variant="497232"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
