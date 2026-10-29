# WebGoat container perf test image
FROM ruby:3.0-alpine
RUN apk add --no-cache tar bind-tools tzdata curl openssh-client nano
ENV APP_ID=40393
LABEL variant="265152"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
