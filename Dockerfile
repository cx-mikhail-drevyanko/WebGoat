# WebGoat container perf test image
FROM ubuntu:20.04
ENV APP_ID=42233
LABEL variant="171086"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
