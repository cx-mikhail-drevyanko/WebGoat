# WebGoat container perf test image
FROM mariadb:10.6
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client jq git && rm -rf /var/lib/apt/lists/*
LABEL variant="459201"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
