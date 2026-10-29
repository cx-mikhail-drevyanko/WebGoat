# WebGoat container perf test image
FROM node:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends procps openssh-client net-tools curl dnsutils sqlite3 libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=13220
LABEL variant="525170"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
