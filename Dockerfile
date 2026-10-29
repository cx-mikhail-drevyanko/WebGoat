# WebGoat container perf test image
FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends openssl libcurl4 gnupg && rm -rf /var/lib/apt/lists/*
RUN pip install pyyaml==5.1 flask==1.0
LABEL variant="398863"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
