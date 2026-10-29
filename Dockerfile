# WebGoat container perf test image
FROM mongo:4.4
LABEL variant="925369"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
