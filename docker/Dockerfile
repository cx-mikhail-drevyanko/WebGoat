# WebGoat container perf test image
FROM python:3.9-slim
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev nano unzip ca-certificates zlib1g && rm -rf /var/lib/apt/lists/*
RUN pip install django==2.2.0 numpy==1.16.0 requests==2.19.0
LABEL variant="887631"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
