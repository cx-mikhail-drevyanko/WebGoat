# WebGoat container perf test image
FROM alpine:3.22
LABEL variant="685246"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
