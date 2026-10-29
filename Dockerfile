# WebGoat container perf test image
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends curl libxml2 libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=91231
LABEL variant="712247"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
