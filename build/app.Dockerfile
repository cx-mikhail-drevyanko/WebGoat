# WebGoat container perf test image
FROM ruby:3.0-alpine
RUN apk add --no-cache openssh-client tzdata
LABEL variant="543341"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
