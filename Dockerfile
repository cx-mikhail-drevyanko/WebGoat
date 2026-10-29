# WebGoat container perf test image
FROM rabbitmq:3.11
LABEL variant="41292"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
