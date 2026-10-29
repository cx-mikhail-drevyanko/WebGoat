# WebGoat container perf test image
FROM redis:6.0-alpine AS stage0
RUN apk add --no-cache bind-tools busybox-extras zlib wget
LABEL variant="139982"
FROM redis:6.2
LABEL variant="184371"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
