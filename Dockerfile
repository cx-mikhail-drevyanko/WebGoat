# WebGoat container perf test image
FROM eclipse-temurin:17-jre-alpine AS stage0
LABEL variant="326549"
FROM python:3.7-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends wget openssl && rm -rf /var/lib/apt/lists/*
RUN pip install jinja2==2.10 pillow==6.2.0 django==2.2.0 sqlalchemy==1.2.0 flask==1.0
LABEL variant="902036"
FROM debian:10-slim
LABEL variant="543624"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
