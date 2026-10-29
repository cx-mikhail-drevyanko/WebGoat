# WebGoat container perf test image
FROM eclipse-temurin:17-jre-alpine AS stage0
RUN apk add --no-cache jq curl
ENV APP_ID=75096
LABEL variant="690319"
FROM memcached:1.6-alpine
RUN apk add --no-cache bind-tools wget libxml2 openssh-client tzdata jq nano
LABEL variant="339251"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
