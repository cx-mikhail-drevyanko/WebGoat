# WebGoat container perf test image
FROM busybox:1.31
RUN apk add --no-cache tar vim jq busybox-extras ca-certificates
LABEL variant="496203"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
