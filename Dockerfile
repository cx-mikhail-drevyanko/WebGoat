# WebGoat container perf test image
FROM python:3.12-alpine
RUN apk add --no-cache tar tzdata vim
ENV APP_ID=61510
LABEL variant="247691"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
