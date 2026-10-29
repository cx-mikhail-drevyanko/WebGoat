# WebGoat container perf test image
FROM httpd:2.4.54
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 unzip zlib1g openssh-client ca-certificates libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=6208
LABEL variant="645308"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
