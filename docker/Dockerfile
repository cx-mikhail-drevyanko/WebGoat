# WebGoat container perf test image
FROM tomcat:10.1-jre17 AS stage0
ENV APP_ID=79994
LABEL variant="829718"
FROM ruby:3.0-alpine
RUN apk add --no-cache curl expat jq bash busybox-extras libcurl ca-certificates sqlite
LABEL variant="27002"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
