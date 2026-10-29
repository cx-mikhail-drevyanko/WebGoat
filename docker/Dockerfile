# WebGoat container perf test image
FROM redis:5.0
RUN apt-get update && apt-get install -y --no-install-recommends git curl vim unzip gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=19829
LABEL variant="174500"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
