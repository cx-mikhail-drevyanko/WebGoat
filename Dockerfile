# WebGoat container perf test image
FROM python:3.9-alpine AS stage0
RUN apk add --no-cache tzdata zlib nano git
RUN pip install flask==1.0 pyyaml==5.1 requests==2.19.0
ENV APP_ID=21775
LABEL variant="358136"
FROM nginx:1.14
RUN apt-get update && apt-get install -y --no-install-recommends git perl sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="963476"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
