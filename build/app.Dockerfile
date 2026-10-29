# WebGoat container perf test image
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends nano libssl-dev dnsutils curl && rm -rf /var/lib/apt/lists/*
RUN pip install django==2.2.0
ENV APP_ID=60098
LABEL variant="18211"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
