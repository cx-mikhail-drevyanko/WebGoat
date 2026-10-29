# WebGoat container perf test image
FROM elasticsearch:7.17.9
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=85483
LABEL variant="672334"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
