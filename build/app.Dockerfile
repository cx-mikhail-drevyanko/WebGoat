# WebGoat container perf test image
FROM alpine:3.22
RUN apk add --no-cache busybox-extras zlib expat git tzdata wget
LABEL variant="245328"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
