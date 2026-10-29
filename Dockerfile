# WebGoat container perf test image
FROM httpd:2.4.54
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client gnupg libxml2 curl && rm -rf /var/lib/apt/lists/*
LABEL variant="178808"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
