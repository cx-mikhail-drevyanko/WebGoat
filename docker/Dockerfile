# WebGoat container perf test image
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils net-tools jq zlib1g vim gnupg && rm -rf /var/lib/apt/lists/*
RUN pip install sqlalchemy==1.2.0
ENV APP_ID=18372
LABEL variant="467750"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
