# WebGoat container perf test image
FROM rabbitmq:3.8-alpine
LABEL variant="31479"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
