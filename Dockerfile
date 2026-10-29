# WebGoat container perf test image
FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends wget curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=79102
LABEL variant="512474"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
