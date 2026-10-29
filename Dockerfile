# WebGoat container perf test image
FROM alpine:3.12
RUN apk add --no-cache libcurl nano gzip bind-tools git tzdata busybox-extras sqlite
LABEL variant="47228"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
