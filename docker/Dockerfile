# WebGoat container perf test image
FROM elasticsearch:7.17.9
RUN apt-get update && apt-get install -y --no-install-recommends perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=55268
LABEL variant="920374"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
