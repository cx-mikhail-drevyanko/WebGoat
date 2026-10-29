# WebGoat container perf test image
FROM mariadb:10.6
RUN apt-get update && apt-get install -y --no-install-recommends wget libcurl4 nano libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="912389"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
