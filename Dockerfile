# WebGoat container perf test image
FROM golang:1.20-alpine
ENV APP_ID=54802
LABEL variant="264423"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
