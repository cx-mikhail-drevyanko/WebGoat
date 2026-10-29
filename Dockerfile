# WebGoat container perf test image
FROM eclipse-temurin:17-jre-alpine AS stage0
RUN apk add --no-cache openssl bind-tools
ENV APP_ID=51939
LABEL variant="524449"
FROM python:3.9-alpine
RUN apk add --no-cache zlib gzip busybox-extras expat
RUN pip install sqlalchemy==1.2.0 requests==2.19.0
ENV APP_ID=10043
LABEL variant="828684"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
