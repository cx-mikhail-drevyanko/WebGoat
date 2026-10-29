# WebGoat container perf test image
FROM httpd:2.4.58-alpine
RUN apk add --no-cache bash ca-certificates expat curl nano git
ENV APP_ID=79213
LABEL variant="869941"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
