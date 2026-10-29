# WebGoat container perf test image
FROM python:3.9-slim
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils gnupg unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=83470
LABEL variant="798518"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
