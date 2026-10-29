# WebGoat container perf test image
FROM tomcat:9.0-jre11
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client net-tools openssl zlib1g git dnsutils sqlite3 nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=70053
LABEL variant="520887"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
