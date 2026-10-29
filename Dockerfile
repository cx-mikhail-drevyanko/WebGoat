# WebGoat container perf test image
FROM ubuntu:16.04
LABEL variant="59616"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
