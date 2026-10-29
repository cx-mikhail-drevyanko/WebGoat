# WebGoat container perf test image
FROM debian:11-slim
ENV APP_ID=96905
LABEL variant="369074"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
