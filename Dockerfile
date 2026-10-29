# WebGoat container perf test image
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends net-tools ca-certificates wget procps vim git && rm -rf /var/lib/apt/lists/*
RUN pip install django==2.2.0 cryptography==2.3 requests==2.19.0 paramiko==2.4.0
ENV APP_ID=23612
LABEL variant="647500"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
