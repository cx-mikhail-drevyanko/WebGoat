# WebGoat container perf test image
FROM redis:6.2
LABEL variant="270497"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
