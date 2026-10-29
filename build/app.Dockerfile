# WebGoat container perf test image
FROM alpine:3.20
RUN apk add --no-cache nano openssh-client gzip bash curl libxml2 busybox-extras tar
ENV APP_ID=33531
LABEL variant="710779"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
