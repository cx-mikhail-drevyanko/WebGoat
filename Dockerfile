# WebGoat container perf test image
FROM postgres:14
RUN apt-get update && apt-get install -y --no-install-recommends vim dnsutils wget git && rm -rf /var/lib/apt/lists/*
ENV APP_ID=95649
LABEL variant="632761"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
