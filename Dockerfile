# WebGoat container perf test image
FROM redis:6.0-alpine AS stage0
LABEL variant="986845"
FROM python:3.11-slim AS stage1
ENV APP_ID=33912
LABEL variant="949029"
FROM eclipse-temurin:17-jre-alpine
RUN apk add --no-cache libxml2 gzip git ca-certificates tar sqlite zlib
LABEL variant="177555"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
