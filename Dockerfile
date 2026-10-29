# WebGoat container perf test image
FROM node:16-alpine
ENV APP_ID=4913
LABEL variant="174150"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
