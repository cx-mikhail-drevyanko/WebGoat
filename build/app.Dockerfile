# WebGoat container perf test image
FROM debian:11-slim
LABEL variant="723259"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
