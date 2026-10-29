# WebGoat container perf test image
FROM mongo:5.0
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=22108
LABEL variant="519462"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
