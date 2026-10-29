# WebGoat container perf test image
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache expat libxml2 ca-certificates
ENV APP_ID=8533
LABEL variant="993458"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
