# WebGoat container perf test image
FROM redis:5.0 AS stage0
LABEL variant="910206"
FROM python:3.12-alpine
RUN apk add --no-cache bind-tools ca-certificates
ENV APP_ID=92581
LABEL variant="193457"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
