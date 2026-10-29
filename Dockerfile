# WebGoat container perf test image
FROM mariadb:10.3
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client curl procps && rm -rf /var/lib/apt/lists/*
LABEL variant="79004"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
