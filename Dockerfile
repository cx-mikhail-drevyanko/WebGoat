# WebGoat container perf test image
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache libcurl bind-tools bash openssh-client curl gzip wget
ENV APP_ID=32038
LABEL variant="765139"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
