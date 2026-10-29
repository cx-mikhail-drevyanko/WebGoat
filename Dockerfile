# WebGoat container perf test image
FROM node:20-alpine
RUN apk add --no-cache busybox-extras wget tzdata jq libcurl openssh-client
ENV APP_ID=89847
LABEL variant="318352"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
