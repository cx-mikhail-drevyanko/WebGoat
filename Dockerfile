# WebGoat container perf test image
FROM node:18-alpine
RUN apk add --no-cache busybox-extras openssh-client wget
ENV APP_ID=81623
LABEL variant="956705"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
