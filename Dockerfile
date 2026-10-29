# WebGoat container perf test image
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends openssl && rm -rf /var/lib/apt/lists/*
RUN pip install flask==1.0
LABEL variant="187800"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
