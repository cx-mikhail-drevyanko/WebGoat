# WebGoat container perf test image
FROM nginx:1.20-alpine
ENV APP_ID=63074
LABEL variant="202938"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
