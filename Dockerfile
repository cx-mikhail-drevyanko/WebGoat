# WebGoat container perf test image
FROM alpine:3.18
RUN apk add --no-cache curl bash
ENV APP_ID=18743
LABEL variant="287816"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
