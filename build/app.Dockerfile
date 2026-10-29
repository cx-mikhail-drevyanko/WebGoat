# WebGoat container perf test image
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache openssl busybox-extras tzdata nano tar vim
LABEL variant="103025"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
