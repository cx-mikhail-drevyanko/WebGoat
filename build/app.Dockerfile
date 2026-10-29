# WebGoat container perf test image
FROM alpine:3.12
LABEL variant="676740"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
