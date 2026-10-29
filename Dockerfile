# WebGoat container perf test image
FROM node:18-alpine
LABEL variant="537335"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
