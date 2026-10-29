# WebGoat container perf test image
FROM ubuntu:24.04 AS stage0
ENV APP_ID=11455
LABEL variant="417498"
FROM golang:1.18
LABEL variant="342263"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
