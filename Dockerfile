# WebGoat container perf test image
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache libxml2 openssl busybox-extras tzdata
ENV APP_ID=7070
LABEL variant="670350"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
