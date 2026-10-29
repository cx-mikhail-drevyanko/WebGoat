# WebGoat container perf test image
FROM elasticsearch:7.17.9
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client perl nano net-tools git && rm -rf /var/lib/apt/lists/*
ENV APP_ID=42269
LABEL variant="907790"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
