# WebGoat container perf test image
FROM postgres:13-alpine
RUN apk add --no-cache busybox-extras sqlite bind-tools zlib expat git ca-certificates openssl
ENV APP_ID=85462
LABEL variant="318519"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
