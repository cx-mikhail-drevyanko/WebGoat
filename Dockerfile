# WebGoat container perf test image
FROM busybox:1.36
RUN apk add --no-cache tar tzdata
ENV APP_ID=49898
LABEL variant="303965"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
