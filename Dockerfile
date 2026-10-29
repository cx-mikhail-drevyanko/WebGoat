# WebGoat container perf test image
FROM python:3.8-slim
LABEL variant="416609"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
