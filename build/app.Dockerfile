# WebGoat container perf test image
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 && rm -rf /var/lib/apt/lists/*
RUN pip install flask==1.0 pyyaml==5.1 lxml==4.2.0 paramiko==2.4.0
LABEL variant="304555"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
