# WebGoat container perf test image
FROM elasticsearch:7.17.9
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="623265"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
