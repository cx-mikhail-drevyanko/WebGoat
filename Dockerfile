# WebGoat container perf test image
FROM debian:12-slim
LABEL variant="426054"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
