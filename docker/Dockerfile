# WebGoat container perf test image
FROM alpine:3.16 AS stage0
RUN apk add --no-cache libcurl busybox-extras git bash
ENV APP_ID=50525
LABEL variant="438529"
FROM postgres:11-alpine
ENV APP_ID=60725
LABEL variant="503205"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
