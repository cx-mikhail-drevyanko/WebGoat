# WebGoat container perf test image
FROM redis:5.0 AS stage0
ENV APP_ID=35052
LABEL variant="303647"
FROM python:3.10-slim
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
RUN pip install pillow==6.2.0 flask==1.0
LABEL variant="251658"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
