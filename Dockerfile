# WebGoat container perf test image
FROM httpd:2.4.54
RUN apt-get update && apt-get install -y --no-install-recommends vim zlib1g curl perl && rm -rf /var/lib/apt/lists/*
LABEL variant="392320"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
