# WebGoat container perf test image
FROM redis:5.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client net-tools libxml2 gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=14646
LABEL variant="336961"
FROM traefik:v2.5 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*
LABEL variant="644583"
FROM memcached:1.5
RUN apt-get update && apt-get install -y --no-install-recommends vim git sqlite3 openssl wget gnupg curl dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="232804"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
