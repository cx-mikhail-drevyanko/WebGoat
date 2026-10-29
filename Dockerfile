# WebGoat container perf test image
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=87375
LABEL variant="962362"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
