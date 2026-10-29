# WebGoat container perf test image
FROM postgres:13-alpine
LABEL variant="571703"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
