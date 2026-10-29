# WebGoat container perf test image
FROM ubuntu:22.04
ENV APP_ID=58047
LABEL variant="214547"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
