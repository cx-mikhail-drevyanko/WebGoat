# WebGoat container perf test image
FROM mongo:6.0
RUN apt-get update && apt-get install -y --no-install-recommends curl gnupg unzip && rm -rf /var/lib/apt/lists/*
LABEL variant="940849"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
