# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 net-tools git gnupg curl && rm -rf /var/lib/apt/lists/*
LABEL variant="629395"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
