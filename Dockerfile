# WebGoat container perf test image
FROM alpine:3.14
RUN apk add --no-cache curl sqlite
ENV APP_ID=62600
LABEL variant="553313"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
