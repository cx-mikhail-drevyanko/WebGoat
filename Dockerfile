# WebGoat container perf test image
FROM ubuntu:24.04
ENV APP_ID=99088
LABEL variant="215965"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
