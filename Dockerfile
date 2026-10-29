# WebGoat container perf test image
FROM alpine:3.22
RUN apk add --no-cache sqlite wget nano
LABEL variant="340032"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
