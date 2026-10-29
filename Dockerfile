# WebGoat container perf test image
FROM debian:12-slim
LABEL variant="485356"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
