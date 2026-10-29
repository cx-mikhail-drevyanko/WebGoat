# WebGoat container perf test image
FROM redis:6.0-alpine
RUN apk add --no-cache ca-certificates curl
LABEL variant="380954"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
