# WebGoat container perf test image
FROM redis:7.0-alpine
LABEL variant="881417"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
