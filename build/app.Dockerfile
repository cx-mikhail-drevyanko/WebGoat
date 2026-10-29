# WebGoat container perf test image
FROM postgres:11-alpine
RUN apk add --no-cache libcurl tar
ENV APP_ID=48084
LABEL variant="965717"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
