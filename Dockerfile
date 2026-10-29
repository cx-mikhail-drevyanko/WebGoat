# WebGoat container perf test image
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates vim dnsutils perl && rm -rf /var/lib/apt/lists/*
RUN pip install lxml==4.2.0 urllib3==1.24 pyyaml==5.1 paramiko==2.4.0
ENV APP_ID=55011
LABEL variant="501824"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
