# WebGoat container perf test image
FROM ubuntu:20.04
LABEL variant="90812"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
