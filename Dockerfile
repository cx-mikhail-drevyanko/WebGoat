# WebGoat container perf test image
FROM tomcat:8.5-jre8 AS stage0
LABEL variant="842791"
FROM mysql:5.7
RUN apt-get update && apt-get install -y --no-install-recommends procps net-tools openssh-client libcurl4 git curl sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="562276"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
