# WebGoat container perf test image
FROM postgres:14
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=70946
LABEL variant="601714"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
