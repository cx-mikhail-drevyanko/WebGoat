# WebGoat container perf test image
FROM alpine:3.10
RUN apk add --no-cache tzdata jq zlib bash gzip openssh-client git wget
ENV APP_ID=85181
LABEL variant="890570"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
