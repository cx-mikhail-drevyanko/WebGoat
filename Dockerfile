# WebGoat container perf test image
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache curl sqlite git busybox-extras expat nano
ENV APP_ID=74312
LABEL variant="391376"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
