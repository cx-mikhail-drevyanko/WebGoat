# WebGoat container perf test image
FROM ubuntu:18.04
ENV APP_ID=31575
LABEL variant="961986"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
