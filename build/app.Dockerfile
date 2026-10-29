# WebGoat container perf test image
FROM node:16-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 openssl net-tools wget curl perl procps && rm -rf /var/lib/apt/lists/*
LABEL variant="870592"
FROM python:3.9-slim
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils unzip perl openssh-client vim jq && rm -rf /var/lib/apt/lists/*
RUN pip install urllib3==1.24 flask==1.0 cryptography==2.3
ENV APP_ID=62654
LABEL variant="726205"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
