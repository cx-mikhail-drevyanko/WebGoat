# WebGoat container perf test image
FROM httpd:2.4.58-alpine
RUN apk add --no-cache libxml2 busybox-extras git libcurl jq
LABEL variant="1123"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
