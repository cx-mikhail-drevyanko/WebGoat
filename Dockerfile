# WebGoat container perf test image
FROM nginx:1.20-alpine
RUN apk add --no-cache expat bash libcurl tzdata busybox-extras tar
LABEL variant="879146"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
