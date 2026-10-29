# WebGoat container perf test image
FROM postgres:13-alpine
RUN apk add --no-cache zlib tzdata ca-certificates
ENV APP_ID=21324
LABEL variant="65056"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
