# WebGoat container perf test image
FROM python:3.10-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 wget sqlite3 curl git openssh-client zlib1g libcurl4 && rm -rf /var/lib/apt/lists/*
RUN pip install cryptography==2.3 lxml==4.2.0 requests==2.19.0 django==2.2.0 urllib3==1.24
ENV APP_ID=44902
LABEL variant="207749"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
