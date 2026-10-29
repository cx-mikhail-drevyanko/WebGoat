# WebGoat container perf test image
FROM ruby:3.0-alpine
RUN apk add --no-cache nano openssh-client libxml2 jq libcurl
LABEL variant="304541"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
