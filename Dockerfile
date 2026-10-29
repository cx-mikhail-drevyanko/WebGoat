# WebGoat container perf test image
FROM python:3.10-slim
RUN apt-get update && apt-get install -y --no-install-recommends git net-tools nano libcurl4 && rm -rf /var/lib/apt/lists/*
RUN pip install pyyaml==5.1 pillow==6.2.0
ENV APP_ID=35046
LABEL variant="265678"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
