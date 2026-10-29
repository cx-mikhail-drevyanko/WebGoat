# WebGoat container perf test image
FROM mysql:5.7
LABEL variant="354989"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
