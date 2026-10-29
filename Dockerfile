# WebGoat container perf test image
FROM node:12-slim
ENV APP_ID=68572
LABEL variant="642285"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
