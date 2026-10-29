# WebGoat container perf test image
FROM mysql:8.0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 git jq unzip perl dnsutils openssh-client sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=43196
LABEL variant="231387"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
