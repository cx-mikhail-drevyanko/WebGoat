# WebGoat container perf test image
FROM postgres:11-alpine
ENV APP_ID=92362
LABEL variant="394141"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
