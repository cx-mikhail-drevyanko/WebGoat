# WebGoat container perf test image
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache wget ca-certificates
ENV APP_ID=21434
LABEL variant="626287"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
