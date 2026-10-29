# WebGoat container perf test image
FROM python:3.10-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools unzip perl ca-certificates jq vim libcurl4 && rm -rf /var/lib/apt/lists/*
RUN pip install requests==2.19.0 urllib3==1.24
ENV APP_ID=72354
LABEL variant="258088"
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends gnupg wget && rm -rf /var/lib/apt/lists/*
RUN pip install lxml==4.2.0 requests==2.19.0
LABEL variant="684006"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
