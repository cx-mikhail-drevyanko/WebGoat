# WebGoat container perf test image
FROM golang:1.20-alpine
ENV APP_ID=16918
LABEL variant="77577"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
