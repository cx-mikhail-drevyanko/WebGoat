# WebGoat container perf test image
FROM mongo:6.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools libxml2 wget openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="762279"
FROM python:3.9-alpine
RUN apk add --no-cache expat ca-certificates curl gzip busybox-extras zlib
RUN pip install requests==2.19.0
ENV APP_ID=97497
LABEL variant="167257"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
