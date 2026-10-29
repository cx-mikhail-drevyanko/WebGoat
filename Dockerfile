# WebGoat container perf test image
FROM postgres:11-alpine
RUN apk add --no-cache git jq tar gzip
LABEL variant="466776"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
