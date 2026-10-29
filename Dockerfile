# WebGoat container perf test image
FROM golang:1.20-alpine
LABEL variant="599332"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
