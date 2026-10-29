# WebGoat container perf test image
FROM httpd:2.4.58-alpine
RUN apk add --no-cache libxml2 libcurl sqlite tzdata gzip openssl wget
LABEL variant="258172"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
