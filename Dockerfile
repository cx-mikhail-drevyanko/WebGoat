# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends perl openssh-client curl gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=13258
LABEL variant="875514"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
