# WebGoat container perf test image
FROM mongo:6.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends curl openssh-client procps && rm -rf /var/lib/apt/lists/*
LABEL variant="860697"
FROM python:3.10-slim
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 git wget curl libcurl4 libssl-dev && rm -rf /var/lib/apt/lists/*
RUN pip install flask==1.0 pillow==6.2.0 numpy==1.16.0 django==2.2.0 lxml==4.2.0
LABEL variant="124345"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
