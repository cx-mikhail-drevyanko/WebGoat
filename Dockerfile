# WebGoat container perf test image
FROM haproxy:2.0
LABEL variant="509573"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
