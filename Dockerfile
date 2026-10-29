# WebGoat container perf test image
FROM redis:5.0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 zlib1g openssh-client libxml2 libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="283290"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
