# WebGoat container perf test image
FROM mysql:8.0
LABEL variant="799939"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
