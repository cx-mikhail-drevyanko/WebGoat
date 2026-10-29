# WebGoat container perf test image
FROM redis:6.2
RUN apt-get update && apt-get install -y --no-install-recommends perl curl openssh-client unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=61121
LABEL variant="418136"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
