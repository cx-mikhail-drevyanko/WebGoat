# WebGoat container perf test image
FROM busybox:1.31
RUN apk add --no-cache tar gzip openssl expat
ENV APP_ID=69945
LABEL variant="703471"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
