# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends curl net-tools vim libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="487870"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
