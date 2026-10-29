# WebGoat container perf test image
FROM python:3.10-slim
RUN apt-get update && apt-get install -y --no-install-recommends vim libssl-dev zlib1g wget jq nano && rm -rf /var/lib/apt/lists/*
RUN pip install django==2.2.0 requests==2.19.0
ENV APP_ID=32171
LABEL variant="813458"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
