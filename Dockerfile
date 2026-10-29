# WebGoat container perf test image
FROM alpine:3.16 AS stage0
RUN apk add --no-cache gzip ca-certificates
ENV APP_ID=12091
LABEL variant="735952"
FROM python:3.12-alpine
LABEL variant="207807"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
