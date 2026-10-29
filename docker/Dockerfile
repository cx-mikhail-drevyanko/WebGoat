# WebGoat container perf test image
FROM python:3.12-alpine
RUN apk add --no-cache sqlite vim gzip busybox-extras nano ca-certificates openssl
ENV APP_ID=13291
LABEL variant="977701"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
