# WebGoat container perf test image
FROM ruby:3.0-alpine
RUN apk add --no-cache libcurl
LABEL variant="718578"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
