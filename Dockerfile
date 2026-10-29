# WebGoat container perf test image
FROM redis:6.0-alpine
RUN apk add --no-cache tzdata busybox-extras libxml2 wget jq tar
LABEL variant="616139"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
