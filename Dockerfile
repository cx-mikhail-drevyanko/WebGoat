# WebGoat container perf test image
FROM httpd:2.4.58-alpine
RUN apk add --no-cache sqlite ca-certificates
ENV APP_ID=82799
LABEL variant="128970"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
