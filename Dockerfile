# WebGoat container perf test image
FROM python:3.9-alpine
RUN apk add --no-cache wget
ENV APP_ID=55731
LABEL variant="529363"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
