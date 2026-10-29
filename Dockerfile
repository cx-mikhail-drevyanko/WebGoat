# WebGoat container perf test image
FROM postgres:14
LABEL variant="406209"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
