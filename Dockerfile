# WebGoat container perf test image
FROM alpine:3.14
RUN apk add --no-cache curl ca-certificates tzdata wget bash
LABEL variant="880319"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
