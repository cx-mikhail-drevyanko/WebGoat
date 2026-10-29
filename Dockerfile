# WebGoat container perf test image
FROM alpine:3.18
LABEL variant="319623"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
