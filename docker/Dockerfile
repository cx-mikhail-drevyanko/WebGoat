# WebGoat container perf test image
FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends unzip gnupg jq libcurl4 && rm -rf /var/lib/apt/lists/*
RUN pip install lxml==4.2.0
ENV APP_ID=77529
LABEL variant="686430"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
