# WebGoat container perf test image
FROM alpine:3.14
RUN apk add --no-cache jq
ENV APP_ID=59263
LABEL variant="672721"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
