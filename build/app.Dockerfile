# WebGoat container perf test image
FROM ruby:3.0-alpine AS stage0
RUN apk add --no-cache openssl sqlite openssh-client
LABEL variant="594136"
FROM nginx:1.24-alpine
LABEL variant="798909"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
