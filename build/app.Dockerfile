# WebGoat container perf test image
FROM ubuntu:22.04
LABEL variant="262137"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
