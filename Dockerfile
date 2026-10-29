# WebGoat container perf test image
FROM alpine:3.16
LABEL variant="442964"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
