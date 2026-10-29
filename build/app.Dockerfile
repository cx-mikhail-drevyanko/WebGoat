# WebGoat container perf test image
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client openssl ca-certificates jq unzip zlib1g gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=42395
LABEL variant="705305"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
