# WebGoat container perf test image
FROM python:3.9-alpine AS stage0
LABEL variant="911430"
FROM alpine:3.22
RUN apk add --no-cache bind-tools curl git libcurl vim bash nano
LABEL variant="931881"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
