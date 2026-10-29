# WebGoat container perf test image
FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends vim openssh-client git libxml2 dnsutils nano perl unzip && rm -rf /var/lib/apt/lists/*
RUN pip install lxml==4.2.0 cryptography==2.3
ENV APP_ID=73678
LABEL variant="750227"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
