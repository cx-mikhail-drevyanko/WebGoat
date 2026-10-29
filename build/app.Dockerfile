# WebGoat container perf test image
FROM busybox:1.36
ENV APP_ID=36507
LABEL variant="79990"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
