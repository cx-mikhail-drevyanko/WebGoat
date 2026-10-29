# WebGoat container perf test image
FROM alpine:3.22 AS stage0
RUN apk add --no-cache libcurl bash tzdata openssl openssh-client busybox-extras
LABEL variant="660960"
FROM tomcat:8.5-jre8 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=30096
LABEL variant="509011"
FROM mongo:6.0
RUN apt-get update && apt-get install -y --no-install-recommends vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=84205
LABEL variant="416106"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
