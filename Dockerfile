# WebGoat container perf test image
FROM redis:5.0
LABEL variant="485667"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
